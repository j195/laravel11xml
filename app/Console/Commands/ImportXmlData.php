<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\UserData;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use XMLReader;
use SimpleXMLElement;

class ImportXmlData extends Command
{
    protected $signature = 'import:xml {file}';
    protected $description = 'Import XML data into MySQL with batch processing and progress tracking';

    public function handle()
    {
        $filePath = $this->argument('file');

        if (!file_exists($filePath)) {
            $this->error("File not found: $filePath");
            return;
        }

        $this->info("Processing XML file: $filePath");

        try {
            $reader = new XMLReader();
            $reader->open($filePath);

            // Move to the first <user> element
            while ($reader->read() && $reader->name !== 'user');

            // Estimate total records for progress bar
            $totalRecords = $this->countRecords($filePath);
            $this->info("Total records found: $totalRecords");
            $bar = $this->output->createProgressBar($totalRecords);
            $bar->start();

            $data = [];
            while ($reader->name === 'user') {
                $xml = new SimpleXMLElement($reader->readOuterXML());
                $exists = UserData::where('name', (string) $xml->name)
                ->where('phone', (string) $xml->phone)
                ->exists();
                if (!$exists) {
                    $data[] = [
                        'name' => (string) $xml->name,
                        'phone' => (string) $xml->phone ?? null,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ];
                }

                $reader->next('user');
                $bar->advance();

                // Insert in batches of 500 for efficiency
                if (count($data) >= 500) {
                    DB::table('user_data')->insert($data);
                    $data = [];
                }
            }

            // Insert remaining records
            if (!empty($data)) {
                DB::table('user_data')->insert($data);
            }

            $bar->finish();
            $this->info("\nImport completed successfully!");

            // Move processed XML file
            Storage::disk('local')->move($filePath, 'processed/' . basename($filePath));

        } catch (\Exception $e) {
            $this->error("Error processing XML: " . $e->getMessage());
        }
    }

    /**
     * Count the number of <user> elements in the XML file.
     */
    private function countRecords($filePath)
    {
        $reader = new XMLReader();
        $reader->open($filePath);
        $count = 0;

        while ($reader->read()) {
            if ($reader->nodeType == XMLReader::ELEMENT && $reader->name == 'user') {
                $count++;
            }
        }

        return $count;
    }
}

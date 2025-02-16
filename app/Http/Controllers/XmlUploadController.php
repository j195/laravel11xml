<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserData;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use XMLReader;
use SimpleXMLElement;

class XmlUploadController extends Controller
{
    public function showForm()
    {
        return view('upload');
    }

    public function uploadXml(Request $request)
    {
        try {
            $request->validate([
                'xml_file' => 'required|mimes:xml,text/xml,application/xml|max:10240'
            ]);

            \Log::info('Validation passed');

            $filePath = $request->file('xml_file')->store('xml');

            return redirect()->route('import.xml', ['file' => $filePath])
                             ->with('success', 'File uploaded successfully!');

        } catch (\Illuminate\Validation\ValidationException $e) {
            \Log::error('Validation failed: ' . json_encode($e->errors()));
            return back()->withErrors($e->errors())->withInput();
        }
    }

    public function importXml(Request $request)
    {
        $filePath = $request->query('file');

        if (!Storage::exists($filePath)) {
            return redirect()->route('upload.form')->with('error', 'File not found!');
        }

        $fullPath = Storage::path($filePath);

        try {
            $reader = new XMLReader();
            $reader->open($fullPath);

            while ($reader->read() && $reader->name !== 'user');

            $data = [];
            while ($reader->name === 'user') {
                $xml = new SimpleXMLElement($reader->readOuterXML());
                // Check if this record already exists (based on email & phone)
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

                if (count($data) >= 500) {
                    DB::table('user_data')->insert($data);
                    $data = [];
                }
            }

            if (!empty($data)) {
                DB::table('user_data')->insert($data);
            }

            return redirect()->route('upload.form')->with('success', 'XML Imported Successfully!');

        } catch (\Exception $e) {
            return redirect()->route('upload.form')->with('error', 'Error processing XML: ' . $e->getMessage());
        }
    }
}

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\XmlUploadController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/upload', [XmlUploadController::class, 'showForm'])->name('upload.form');
Route::post('/upload-xml', [XmlUploadController::class, 'uploadXml'])->name('upload.xml');
Route::get('/import-xml', [XmlUploadController::class, 'importXml'])->name('import.xml');

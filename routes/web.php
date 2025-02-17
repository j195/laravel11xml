<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\XmlUploadController;

Route::get('/',[XmlUploadController::class, 'index'])->name('index');
Route::get('edit/{id}',[XmlUploadController::class, 'edit'])->name('edit');
Route::delete('destroy/{id}',[XmlUploadController::class, 'destroy'])->name('destroy');
Route::put('update/{id}', [XmlUploadController::class, 'update'])->name('update');

Route::get('/upload', [XmlUploadController::class, 'showForm'])->name('upload.form');
Route::post('/upload-xml', [XmlUploadController::class, 'uploadXml'])->name('upload.xml');
Route::get('/import-xml', [XmlUploadController::class, 'importXml'])->name('import.xml');

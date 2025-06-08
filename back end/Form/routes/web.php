<?php

use App\Http\Controllers\FormConteroller;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('form1',[FormConteroller::class,
'form1'])->name('forms.form1');
Route::post('form1',[FormConteroller::class,
'form1_data']);

Route::get('form2',[FormConteroller::class,
'form2'])->name('forms.form2');
Route::post('form2',[FormConteroller::class,
'form2_data']);


Route::get('form3',[FormConteroller::class,
'form3'])->name('forms.form3');
Route::post('form3',[FormConteroller::class,
'form3_data']);


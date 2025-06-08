<?php

use App\Http\Controllers\FrontController;
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






Route::get('/', [FrontController::class, 'index'])->name('front.index');
Route::get('/about ',[FrontController::class,'about'])->name('front.about');
Route::get('/contact ',[FrontController::class,'contact'])->name('front.contact');
Route::post('/contact_data ',[FrontController::class,'contact_data']);
Route::get('/feature ',[FrontController::class,'feature'])->name('front.feature');
Route::get('/project ',[FrontController::class,'project'])->name('front.project');
Route::get('/service ',[FrontController::class,'service'])->name('front.service');
Route::get('/team ',[FrontController::class,'team'])->name('front.team');
Route::get('/testimonial ',[FrontController::class,'testimonial'])->name('front.testimonial');

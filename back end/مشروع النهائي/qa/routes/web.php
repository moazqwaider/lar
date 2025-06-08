<?php

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Route;
use Spatie\Permission\Contracts\Role;
use App\Http\Controllers\aipcontroller;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\userController;
use App\Http\Controllers\courtController;
use App\Http\Controllers\RolesController;
use App\Http\Controllers\circleController;
use App\Http\Controllers\companyController;
use App\Http\Controllers\PermissionsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth'])->group(function(){

    Route::get('/dashboard',[HomeController::class,'index'])->name('dashboard');

////////////////////user
    Route::prefix('user')->group(function(){
        Route::get('/',[userController::class,'index'])->name('user.index');
        Route::get('/create',[userController::class,'create'])->name('user.create');
        Route::post('/create',[userController::class,'store'])->name('user.store');
        Route::get('/{user}/show',[userController::class,'show'])->name('user.show');
        Route::get('/{user}/destroy',[userController::class,'destroy'])->name('user.destroy');
        Route::get('/{user}/edit',[userController::class,'edit'])->name('user.edit');
        Route::patch('/{user}/update',[userController::class,'update'])->name('user.update');








    });
    Route::prefix('company')->group(function(){
        Route::get('/index',[companyController::class,'index'])->name('company.index');
        Route::get('/create',[companyController::class,'create'])->name('company.create');
        Route::get('/store',[companyController::class,'store'])->name('company.store');
        Route::get('/destroy/{id}',[companyController::class,'destroy'])->name('company.destroy');
        Route::get('/{company}/show',[companyController::class,'show'])->name('company.show');

        });

        /////////////////////////
        Route::resource('roles',RolesController::class);
        Route::resource('permissions',PermissionsController::class);
        Route::resource('circle',circleController::class);
        Route::resource('court',courtController::class);


});

    //Route::get('posts_api',aipcontroller::class);





///////////////////////////
// Route::resource('company', companyController::class);
////////////////////company

////////////////////user
// Route::prefix('user')->group(function(){
// Route::get('index',[userController::class,'index'])->name('user.index');
// Route::get('create',[userController::class,'create'])->name('user.create');
// Route::get('store',[userController::class,'store'])->name('user.store');
// });
require __DIR__.'/auth.php';

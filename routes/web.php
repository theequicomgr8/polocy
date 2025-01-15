<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

use App\Http\Controllers\PostController;

Route::get('/',[AuthController::class,'index'])->name('auth.login.form');
Route::post('/login',[AuthController::class,'login'])->name('auth.login.check');


Route::get('/dashboard',[PostController::class,'index'])->name('show.post');
Route::get('/view/{id?}',[PostController::class,'view'])->name('post.view');
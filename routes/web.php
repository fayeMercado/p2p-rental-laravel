<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/products', 'App\Http\Controllers\ProductController@getProducts');

Route::post('/products', 'App\Http\Controllers\ProductController@postProducts');

Route::get('/cart', 'App\Http\Controllers\CartController@getCart');

Route::post('/cart', 'App\Http\Controllers\CartController@postCart');

Route::post('/register', 'App\Http\Controllers\UserController@register');

Route::post('/login', 'App\Http\Controllers\UserController@login');

Route::get('/profile', 'App\Http\Controllers\UserController@getProfile');

Route::patch('/profile/edit', 'App\Http\Controllers\UserController@patchProfile');
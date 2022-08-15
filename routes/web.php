<?php

use Illuminate\Support\Facades\Route;
use App\Models\Cart;

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

// <<<<< User Controller >>>>>
Route::post('/register', 'App\Http\Controllers\UserController@register');
Route::post('/login', 'App\Http\Controllers\UserController@login');
Route::get('/profile', 'App\Http\Controllers\UserController@getProfile');
Route::patch('/profile/edit', 'App\Http\Controllers\UserController@patchProfile');

// <<<<< Product Controller >>>>>
Route::get('/products', 'App\Http\Controllers\ProductController@getProducts');
Route::post('/products', 'App\Http\Controllers\ProductController@postProducts');

// <<<<< Cart Controller >>>>>
// Route::post('/cart/get', 'App\Http\Controllers\CartController@getCart');
// Route::get('/cart', 'App\Http\Controllers\CartController@getCart');
// Route::get('/cart/{id}', 'App\Http\Controllers\CartController@getCart');

Route::get('/cart/{cartId}', 'App\Http\Controllers\CartController@getCart');
Route::post('/cart', 'App\Http\Controllers\CartController@postCart');
Route::delete('/cart', 'App\Http\Controllers\CartController@deleteCart');
Route::patch('/cart', 'App\Http\Controllers\CartController@updateCart');


// Route::get('cart/{cart_id}', function ($cart_id) {
//     $Carts = Route::get('/cart', 'App\Http\Controllers\CartController@getCart');
//     return Carts.$cart_id;
// });

// Route::get('/cart/{id}', 'App\Http\Controllers\CartController@getCart');
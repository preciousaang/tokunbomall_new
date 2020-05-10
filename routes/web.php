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

Route::namespace('Users')->group(function(){
    Route::get('login', 'LoginController@form')->name('login-form');
    Route::post('login', 'LoginController@login')->name('login');
    Route::get('register', 'RegistrationController@form')->name('registration-form');
    Route::post('register', 'RegistrationController@register')->name('register');
    Route::any('logout', 'LoginController@logout')->name('logout');
});


Route::middleware('auth')->group(function(){
    Route::get('post-ad', 'ProductsController@create')->name('post-ad-form');
    Route::post('post-ad', 'ProductsController@store')->name('post-ad');
});


Route::get('classified/{category}', 'ProductsController@list')->name('list-product');
Route::get('single/{id}/{slug}', 'ProductsController@view')->name('single-product');



// Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

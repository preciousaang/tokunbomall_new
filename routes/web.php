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

Route::get('/', 'HomeController@index')->name('homepage');

Route::namespace('Users')->group(function(){
    Route::get('login', 'LoginController@form')->name('login-form');
    Route::post('login', 'LoginController@login')->name('login');
    Route::get('register', 'RegistrationController@form')->name('registration-form');
    Route::post('register', 'RegistrationController@register')->name('register');
    Route::any('logout', 'LoginController@logout')->name('logout');
    Route::middleware('auth')->group(function(){
        Route::get('dashboard/{state?}', 'DashboardController@list')->name('dashboard');
        Route::get('my-ads', 'DashboardController@myAds')->name('my-ads');
        Route::get('edit-profile', 'DashboardController@editProfile')->name('edit-profile-form');
        Route::post('edit-profile', 'DashboardController@updateProfile')->name('update-profile');
        Route::get('edit-password', 'DashboardController@editPassword')->name('edit-password-form');
        Route::post('edit-password', 'DashboardController@changePassword')->name('change-password');
        Route::get('change-state/{id}', 'DashboardController@changeState')->name('change-state');
        Route::post('bulk-action', 'DashboardController@bulkAction')->name('bulk-action');
    });
});

Route::namespace('Auth')->group(function(){
    Route::get('password/reset', 'ForgotPasswordController@showLinkRequestForm')->name('password.request');
    Route::post('passwor/reset', 'ResetPasswordController@reset')->name('password.update');
    Route::get('password/reset/{token}', 'ResetPasswordController@showResetForm')->name('password.reset');
    Route::post('password/email', 'ForgotPasswordController@sendResetLinkEmail')->name('password.email');
    
});

Route::middleware('auth')->group(function(){
    Route::get('post-ad', 'ProductsController@create')->name('post-ad-form');
    Route::post('post-ad', 'ProductsController@store')->name('post-ad');
    Route::get('delete/{id}', 'ProductsController@delete')->name('delete-product');
    Route::get('{id}/edit', 'ProductsController@edit')->name('edit-product');
    Route::post('{id}/edit', 'ProductsController@update')->name('update-product');
});


Route::get('classified/{category}', 'ProductsController@list')->name('list-product');
Route::get('single/{id}/{slug}', 'ProductsController@view')->name('single-product');
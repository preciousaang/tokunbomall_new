<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\State;
use App\Category;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/categories', function(){
    return response()->json(['categories'=>Category::orderBy('title', 'asc')->get()]);
});

Route::get('/states', function(){
    return response()->json(['states'=>State::orderBy('state', 'asc')->with('local_govts')->get()]);
});

Route::namespace('Api')->group(function(){
    
    Route::post('login', 'AuthController@login')->middleware('guest:sanctum');
});

Route::namespace('Users')->group(function(){
    Route::post('register', 'RegistrationController@register')->middleware('guest:sanctum');

    Route::middleware('auth:sanctum')->group(function(){
        Route::post('edit-profile', 'DashboardController@updateProfile');
        Route::post('edit-password', 'DashboardController@changePassword');
        Route::post('change-state/{id}', 'DashboardController@changeState');
        Route::post('bulk-action', 'DashboardController@bulkAction');
        Route::get('dashboard/{state?}', 'DashboardController@list');
        Route::get('my-ads', 'DashboardController@myAds');
        Route::get('change-state/{id}', 'DashboardController@changeState');
        Route::post('bulk-action', 'DashboardController@bulkAction');
    });
});

Route::middleware('auth:sanctum')->group(function(){   
    Route::post('post-ad', 'ProductsController@store');
    Route::post('delete/{id}', 'ProductsController@delete')->name('delete-product');    
    Route::post('{id}/edit', 'ProductsController@update')->name('update-product');
});

Route::namespace('Auth')->group(function(){        
    Route::post('password/email', 'ForgotPasswordController@sendResetLinkEmail')->name('password.email');
});

Route::get('classified/{category}', 'ProductsController@list')->name('list-product');
Route::get('single/{id}/{slug}', 'ProductsController@view')->name('single-product');

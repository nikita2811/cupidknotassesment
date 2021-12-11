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
    return view('auth/login');
});

Auth::routes();

Route::post('/register', 'Auth\RegisterController@registration');
Route::get('auth/google', 'Auth\LoginController@redirectToGoogle');
Route::get('auth/google/callback', 'Auth\LoginController@handleGoogleCallback'); 
 Route::group(['middleware' => ['admin']], function() {
Route::get('/admin', 'HomeController@admin')->name('admin');
});
 Route::get('/home', 'HomeController@index')->name('home');
 Route::get('/age', 'HomeController@age')->name('age');
 Route::get('/family', 'HomeController@family')->name('family');
 Route::get('/manglik', 'HomeController@manglik')->name('manglik');
 Route::get('/income', 'HomeController@income')->name('income');
 Route::get('/gender', 'HomeController@gender')->name('gender');


 

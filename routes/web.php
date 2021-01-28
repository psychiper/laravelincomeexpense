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

Route::get('/', 'StudentController@index')->name('home');
Route::get('/search', 'StudentController@search')->name('search');
Route::get('/searchresult', 'StudentController@showsearch')->name('searchresult');
Route::get('/create', 'StudentController@create')->name('create');
Route::post('/create', 'StudentController@store')->name('store');
Route::get('/edit/{id}/', 'StudentController@edit')->name('edit');
Route::post('/update/{id}/', 'StudentController@update')->name('update');
Route::get('/del/{id}/', 'StudentController@del')->name('del');



Route::get('/hello', function () {
    return  'Hello World';
});



Route::get('/user/{id}', function ($id) {
    return  'Your ID is '.$id;
});

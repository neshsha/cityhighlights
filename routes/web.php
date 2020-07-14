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

Route::get('/', 'ArticleController@index');
Route::get('/articles', 'ArticleController@index')->name('article.index');
Route::get('/articles/create', 'ArticleController@create')->name('article.create');
Route::get('/articles/{article}/show', 'ArticleController@show')->name('article.show');
Route::get('/articles/{article}/edit', 'ArticleController@edit')->name('article.edit');
Route::post('/articles/create', 'ArticleController@store')->name('article.store');
Route::patch('/articles/{article}/update', 'ArticleController@update')->name('article.update');
Route::delete('/articles/{article}/delete', 'ArticleController@destroy')->name('article.destroy');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

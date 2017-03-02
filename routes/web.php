<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', 'CategoriaController@getNovedades');
/*Route::get('auth/login', 'CategoriaController@getHome');
Route::get('logout', 'CategoriaController.php@getHome');*/
Route::get('categorias', 'CategoriaController@getCategorias');
Route::get('categorias/{id_categoria}', 'CategoriaController@getProductoPorCatgoria');
Route::get('producto/{id}', 'CategoriaController@getFicha');
Route::get('aboutus', 'CategoriaController@crearProd');
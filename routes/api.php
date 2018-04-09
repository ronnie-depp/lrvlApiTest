<?php

use Illuminate\Http\Request;
//Use App\Article;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('v1')->group(function(){
    Route::get('version', function() {
        return (['LaravelVersion' => app()->version(), 'ApiVersion' => '1.0.0']);
    });

    //Route::get('articles', function() {
    //    // If the Content-Type and Accept headers are set to 'application/json', 
    //    // this will return a JSON structure. This will be cleaned up later.
    //    return Article::all();
    //});
    // 
    //Route::get('articles/{id}', function($id) {
    //    return Article::find($id);
    //});
    //
    //Route::post('articles', function(Request $request) {
    //    return Article::create($request->all);
    //});
    //
    //Route::put('articles/{id}', function(Request $request, $id) {
    //    $article = Article::findOrFail($id);
    //    $article->update($request->all());
    //
    //    return $article;
    //});
    //
    //Route::delete('articles/{id}', function($id) {
    //    Article::find($id)->delete();
    //
    //    return 204;
    //});

    Route::get('articles', 'Articles@index');
    Route::get('articles/{article}', 'Articles@show');
    Route::post('articles', 'Articles@store');
    Route::put('articles/{article}', 'Articles@update');
    Route::delete('articles/{article}', 'Articles@delete');
    
    // User or Users related routes
    Route::get('user/{id}', 'Users@show');
});
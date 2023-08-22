<?php

use App\Http\Controllers\AwardeeController;
use App\Http\Controllers\HeroController;
use App\Http\Controllers\PageController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

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

Route::get('/', [PageController::class, 'index'])->name('home');

Route::get('/about', [PageController::class, 'about'])->name('about');

Route::get('/awardee', [AwardeeController::class, 'index'])->name('awardee');
Route::get('/awardee/{slug}', [AwardeeController::class, 'show'])->name('awardee.item');

Route::get('/fellows', [HeroController::class, 'index'])->name('heroes');
Route::get('/fellows/{slug}', [HeroController::class, 'show'])->name('heroes.item');

Route::post('/contact', [PageController::class, 'contact'])->name('contact');

Route::group(['prefix' => 'goldengen'], function () {
    Voyager::routes();
});

<?php

use App\Http\Controllers\AwardeeController;
use App\Http\Controllers\HeroController;
use App\Http\Controllers\NewsController;
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
Route::get('/awardee/{year}', [AwardeeController::class, 'year'])->name('awardee.year');
Route::get('/awardee/s/{slug}', [AwardeeController::class, 'show'])->name('awardee.item');

Route::get('/fellows', [HeroController::class, 'index'])->name('heroes');
Route::get('/fellows/{year}', [HeroController::class, 'year'])->name('heroes.year');
Route::get('/fellows/s/{slug}', [HeroController::class, 'show'])->name('heroes.item');

Route::get('/achievement', [PageController::class, 'achievement'])->name('achievement');
Route::get('/achievement/search', [PageController::class, 'achievementSearch'])->name('achievement.search');
Route::get('/achievement/{year}', [PageController::class, 'achievementYear'])->name('achievement.year');

Route::get('/news', [NewsController::class, 'index'])->name('news');
Route::get('/news/{slug}', [NewsController::class, 'show'])->name('news.show');

Route::get('/contact', [PageController::class, 'contact'])->name('contact');
Route::get('/regist', [PageController::class, 'regist'])->name('regist');

Route::group(['prefix' => 'goldengen'], function () {
    Voyager::routes();
});

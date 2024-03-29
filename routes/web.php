<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SetLocaleController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\RepertoireController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/create/etudiant', [EtudiantController::class, 'create'])->name('etudiant.create');
Route::post('/create/etudiant', [EtudiantController::class, 'store'])->name('etudiant.store');

Route::middleware('auth')->group(function(){
    Route::get('/etudiants', [EtudiantController::class, 'index'])->name('etudiant.index');
    Route::get('/etudiant/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');
    Route::get('/edit/etudiant/{etudiant}', [EtudiantController::class, 'edit'])->name('etudiant.edit');
    Route::put('/edit/etudiant/{etudiant}', [EtudiantController::class, 'update'])->name('etudiant.update');
    Route::delete('/etudiant/{etudiant}', [EtudiantController::class, 'destroy'])->name('etudiant.delete');

    Route::get('/articles', [ArticleController::class, 'index'])->name('article.index');
    Route::get('/create/article', [ArticleController::class, 'create'])->name('article.create');
    Route::post('/create/article', [ArticleController::class, 'store'])->name('article.store');
    Route::get('/edit/article/{article}', [ArticleController::class, 'edit'])->name('article.edit');
    Route::put('/edit/article/{article}', [ArticleController::class, 'update'])->name('article.update');
    Route::delete('/article/{article}', [ArticleController::class, 'destroy'])->name('article.delete');

    Route::get('/repertoires', [RepertoireController::class, 'index'])->name('repertoire.index');
    Route::get('/create/repertoire', [RepertoireController::class, 'create'])->name('repertoire.create');
    Route::post('/create/repertoire', [RepertoireController::class, 'store'])->name('repertoire.store');
    Route::get('/edit/repertoire/{repertoire}', [RepertoireController::class, 'edit'])->name('repertoire.edit');
    Route::put('/edit/repertoire/{repertoire}', [RepertoireController::class, 'update'])->name('repertoire.update');
    Route::delete('/repertoire/{repertoire}', [RepertoireController::class, 'destroy'])->name('repertoire.delete');
});

Route::get('/login', [AuthController::class, 'create'])->name('login');
Route::post('/login', [AuthController::class, 'store'])->name('login.store');
Route::get('/logout', [AuthController::class, 'destroy'])->name('logout');

Route::get('/lang/{locale}', [SetLocaleController::class, 'index'])->name('lang');
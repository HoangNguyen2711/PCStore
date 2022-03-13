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

//Frontend
use App\Http\Controllers\HomeController;

Route::get('/', [HomeController::class, 'index']);

Route::get('/trang-chu', [HomeController::class, 'index']);

//Backend
use App\Http\Controllers\AdminController;

Route::get('/admin', [AdminController::class, 'index']);
Route::get('/dashboard', [AdminController::class, 'show_dashboard']);
Route::get('/logout', [AdminController::class, 'logout']);
Route::post('/admin-dashboard', [AdminController::class, 'dashboard']);

//Category Product
use App\Http\Controllers\CategoryController;

Route::get('/add-category-product', [CategoryController::class, 'add_category_product']);
Route::get('/all-category-product', [CategoryController::class, 'all_category_product']);


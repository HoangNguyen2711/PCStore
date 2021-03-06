<?php

use Illuminate\Support\Facades\Route;

//Frontend
use App\Http\Controllers\HomeController;

Route::get('/', [HomeController::class, 'index']);
Route::get('/trang-chu', [HomeController::class, 'index']);
Route::post('/tim-kiem', [HomeController::class, 'search']);
Route::get('/all-product-views', [HomeController::class, 'all_product_view']);

//Backend
use App\Http\Controllers\AdminController;

Route::get('/admin', [AdminController::class, 'index']);
Route::get('/dashboard', [AdminController::class, 'show_dashboard']);
Route::get('/logout', [AdminController::class, 'logout']);
Route::post('/admin-dashboard', [AdminController::class, 'dashboard']);

//Category Product
use App\Http\Controllers\CategoryController;

Route::get('/add-category-product', [CategoryController::class, 'add_category_product']);
Route::get('/edit-category-product/{category_product_id}', [CategoryController::class, 'edit_category_product']);

Route::get('/delete-category-product/{category_product_id}', [CategoryController::class, 'delete_category_product']);
Route::get('/all-category-product', [CategoryController::class, 'all_category_product']);

Route::get('/active-category-product/{category_product_id}', [CategoryController::class, 'active_category_product']);
Route::get('/unactive-category-product/{category_product_id}', [CategoryController::class, 'unactive_category_product']);

Route::post('/save-category-product', [CategoryController::class, 'save_category_product']);
Route::post('/update-category-product/{category_product_id}', [CategoryController::class, 'update_category_product']);

//Danh muc san pham trang chu
Route::get('/danh-muc-san-pham/{category_id}', [CategoryController::class, 'show_category_home']);




//Brand Product
use App\Http\Controllers\BrandController;

Route::get('/add-brand-product', [BrandController::class, 'add_brand_product']);
Route::get('/edit-brand-product/{brand_product_id}', [BrandController::class, 'edit_brand_product']);
Route::get('/delete-brand-product/{brand_product_id}', [BrandController::class, 'delete_brand_product']);
Route::get('/all-brand-product', [BrandController::class, 'all_brand_product']);

Route::get('/active-brand-product/{brand_product_id}', [BrandController::class, 'active_brand_product']);
Route::get('/unactive-brand-product/{brand_product_id}', [BrandController::class, 'unactive_brand_product']);

Route::post('/save-brand-product', [BrandController::class, 'save_brand_product']);
Route::post('/update-brand-product/{brand_product_id}', [BrandController::class, 'update_brand_product']);

//Danh muc thuong hieu trang chu
Route::get('/thuong-hieu-san-pham/{brand_id}', [BrandController::class, 'show_brand_home']);

//Product
use App\Http\Controllers\ProductController;

Route::get('/add-product', [ProductController::class, 'add_product']);
Route::get('/edit-product/{product_id}', [ProductController::class, 'edit_product']);
Route::get('/delete-product/{product_id}', [ProductController::class, 'delete_product']);
Route::get('/all-product', [ProductController::class, 'all_product']);

Route::get('/active-product/{product_id}', [ProductController::class, 'active_product']);
Route::get('/unactive-product/{product_id}', [ProductController::class, 'unactive_product']);

Route::post('/save-product', [ProductController::class, 'save_product']);
Route::post('/update-product/{product_id}', [ProductController::class, 'update_product']);

Route::get('/chi-tiet-san-pham/{product_id}', [ProductController::class, 'details_product']);

//Cart
use App\Http\Controllers\CartController;
Route::post('/save-cart', [CartController::class, 'save_cart']);
Route::post('/update-cart-quantity', [CartController::class, 'update_cart_quantity']);
Route::get('/show-cart', [CartController::class, 'show_cart']);
Route::get('/delete-to-cart/{rowId}', [CartController::class, 'delete_to_cart']);

//Checkout
use App\Http\Controllers\CheckoutController;
Route::get('/login-checkout', [CheckoutController::class, 'login_checkout']);
Route::get('/logout-checkout', [CheckoutController::class, 'logout_checkout']);
Route::post('/add-customer', [CheckoutController::class, 'add_customer']);
Route::post('/order-place', [CheckoutController::class, 'order_place']);
Route::get('/checkout', [CheckoutController::class, 'checkout']);
Route::post('/save-checkout-customer', [CheckoutController::class, 'save_checkout_customer']);
Route::post('/login-customer', [CheckoutController::class, 'login_customer']);
Route::get('/payment', [CheckoutController::class, 'payment']);


//Order
Route::get('/manage-order', [CheckoutController::class, 'manage_order']);
Route::get('/view-order/{order_id}', [CheckoutController::class, 'view_order']);
Route::get('/delete-order/{order_id}', [CheckoutController::class, 'delete_order']);
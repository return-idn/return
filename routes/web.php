<?php

use App\Http\Controllers\CoinWithdrawalController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WasteCategoryController;
use App\Http\Controllers\WasteController;
use App\Http\Controllers\WasteGalleryController;
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

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');

Route::group(['middleware' => ['auth:sanctum', 'verified']], function () {

    Route::name('dashboard.')->prefix('dashboard')->group(function () {
        Route::get('/', [DashboardController::class, 'index'])->name('index');


        Route::middleware(['admin'])->group(function () {
            Route::resource('waste', WasteController::class);
            Route::resource('category', WasteCategoryController::class);
            Route::resource('waste.gallery', WasteGalleryController::class)->shallow()->only([
                'index', 'create', 'store', 'destroy'
            ]);
            Route::resource('user', UserController::class)->only([
                'index', 'edit', 'update', 'destroy'
            ]);
            Route::resource('coinWithdrawal', CoinWithdrawalController::class)->only([
                'index', 'show', 'edit', 'update'
            ]);
        });
        Route::middleware(['adminOrPartner'])->group(function () {
            Route::resource('transaction', TransactionController::class)->only([
                'index', 'show', 'edit', 'update'
            ]);
        });
    });
});

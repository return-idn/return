<?php

use App\Http\Controllers\API\CoinController;
use App\Http\Controllers\API\CoinWithdrawalController;
use App\Http\Controllers\API\TransactionController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\WasteBankController;
use App\Http\Controllers\API\WasteCategoryController;
use App\Http\Controllers\API\WasteController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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


Route::get('wastes', [WasteController::class, 'all']);
Route::get('waste-banks', [WasteBankController::class, 'all']);
Route::get('categories', [WasteCategoryController::class, 'all']);

Route::post('register', [UserController::class, 'register']);
Route::post('login', [UserController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    Route::get('user', [UserController::class, 'fetch']);
    Route::post('user', [UserController::class, 'updateProfile']);
    Route::post('logout', [UserController::class, 'logout']);

    Route::get('transactions', [TransactionController::class, 'all']);
    Route::post('checkout', [TransactionController::class, 'checkout']);

    Route::get('coin', [CoinController::class, 'fetch']);
    Route::get('withdrawals', [CoinWithdrawalController::class, 'all']);
    Route::post('withdraw', [CoinWithdrawalController::class, 'withdraw']);
});

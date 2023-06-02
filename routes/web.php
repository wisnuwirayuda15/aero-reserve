<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FlightController;

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

Route::fallback(function () {
    return response()->json([
        'status' => 404,
        'error' => [
            'code' => 'endpoint_not_found',
            'message' => 'Endpoint tidak tersedia. Pastikan anda memberikan endpoint yang kami sediakan.'
        ]
    ], 404);
});


Route::get('/', function () {
    return response()->json([
        'status' => 403,
        'error' => [
            'code' => 'forbidden',
            'message' => 'Lihat dokumentasi https://github.com/wisnuwirayuda15/flight-restful-api untuk menggunakan layanan kami.'
        ]
    ], 403);
});

Route::get('view', [FlightController::class, 'view'])->name('flights.view');
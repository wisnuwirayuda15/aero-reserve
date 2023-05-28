<?php

use App\Models\Flight;
use Illuminate\Support\Facades\Route;

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
    return response()->json([
        'status' => 403,
        'error' => [
            'code' => 'forbidden',
            'message' => 'Tambahkan endpoint /api/flights untuk mengambil data api.'
        ]
    ], 403);
});

Route::get('/view', function () {
    $flight = new Flight;

    $response = $flight->fetchData(env('API_KEY_1'));

    return view('index', [
        'api_result' => $response['data']
    ]);
});
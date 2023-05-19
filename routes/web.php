<?php

use App\Http\Controllers\FlightController;
use App\Models\Flight;
use Illuminate\Support\Facades\Route;
use Carbon\Carbon;

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
    // return response()->json([
    //     'status' => 'forbidden',
    //     'message' => 'Tambahkan endpoint /api/flights untuk mengambil data api.'
    // ], 200);

    $queryString = http_build_query([
        'access_key' => env('API_KEY'),
        'limit' => 50,
        'offset' => null
    ]);
    $ch = curl_init(sprintf('%s?%s', 'http://api.aviationstack.com/v1/flights', $queryString));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $json = curl_exec($ch);
    curl_close($ch);
    $api_result = json_decode($json);
    if (isset($api_result->error)) {
        return response()->json(
            $api_result
        );
    };

    return view('index', [
        'api_result' => $api_result->data
    ]);
});

Route::get('/are', function () {
    $curl = curl_init();
    curl_setopt_array($curl, [
        CURLOPT_URL => "https://jadwalkeretaapi-indonesian-train-schedule-jadwal-kereta-v1.p.rapidapi.com/api?apikey=101487229685974604868&regstasiun=1&tanggal=20171106&dewasa=1&infant=0",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => [
            "X-RapidAPI-Host: jadwalkeretaapi-indonesian-train-schedule-jadwal-kereta-v1.p.rapidapi.com",
            "X-RapidAPI-Key: 7bae30b686msh70644f18cb71106p193a45jsn38a5a9793424"
        ],
    ]);
    $response = curl_exec($curl);
    $err = curl_error($curl);
    curl_close($curl);
    if ($err) {
        echo "cURL Error #:" . $err;
    } else {
        return response()->json(
            $response
        );
    }
});

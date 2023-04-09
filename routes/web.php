<?php

use App\Http\Controllers\FlightController;
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
    $queryString = http_build_query([
        'access_key' => '3f78a4a74f48eebf0244529b2ec2a9a5',
        'limit' => 100,
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
    // foreach ($api_result->data as $data) {
    //     $flight = new Flight;
    //     $flight->airline = $data->airline->name;
    //     $flight->flight_code = $data->flight->iata;
    //     $flight->departure = $data->departure->airport;
    //     $flight->arrival = $data->arrival->airport;
    //     $flight->scheduled = $data->departure->scheduled;
    //     $flight->estimated = $data->arrival->estimated;
    //     $flight->status = $data->flight_status;
    //     $flight->date = $data->flight_date;
    //     $flight->save();
    // };
    return view('index', [
        'api_result' => $api_result->data
    ]);
});

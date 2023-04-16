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
    return response()->json([
        'status' => 'forbidden',
        'message' => 'Tambahkan endpoint /api/flights untuk mengambil data api.'
    ], 200);

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
    //     $class = array('Economy', 'Business', 'First Class', 'Premium Economy');
    //     $scheduled = Carbon::parse($data->departure->scheduled);
    //     $estimated = Carbon::parse($data->arrival->estimated);
    //     $duration = $scheduled->diff($estimated);

    //     $flight = new Flight;
    //     $flight->airline = $data->airline->name;
    //     // $flight->flight_code = $data->flight->iata;
    //     $flight->departure = $data->departure->airport . ' (' . $data->departure->iata . ')';
    //     $flight->arrival = $data->arrival->airport . ' (' . $data->arrival->iata . ')';
    //     $flight->class = array_rand(array_flip($class));
    //     $flight->price = round(rand(1000000, 10000000));
    //     $flight->duration = $duration->format('%hh %im');
    //     $flight->scheduled = $data->departure->scheduled;
    //     $flight->estimated = $data->arrival->estimated;
    //     // $flight->status = $data->flight_status;
    //     $flight->date = $data->flight_date;
    //     $flight->save();
    // };
    
    return view('index', [
        'api_result' => $api_result->data
    ]);
});

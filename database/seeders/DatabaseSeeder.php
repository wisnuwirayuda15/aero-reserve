<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Carbon\Carbon;
use App\Models\Flight;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        $queryString = http_build_query([
            'access_key' => env('API_KEY'),
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
    
        foreach ($api_result->data as $data) {
            $class = array('Economy', 'Business', 'First Class', 'Premium Economy');
            $scheduled = Carbon::parse($data->departure->scheduled);
            $estimated = Carbon::parse($data->arrival->estimated);
            $duration = $scheduled->diff($estimated);
    
            $flight = new Flight;
            $flight->airline = $data->airline->name;
            // $flight->flight_code = $data->flight->iata;
            $flight->departure = $data->departure->airport . ' (' . $data->departure->iata . ')';
            $flight->arrival = $data->arrival->airport . ' (' . $data->arrival->iata . ')';
            $flight->class = array_rand(array_flip($class));
            $flight->price = round(rand(1000000, 10000000));
            $flight->duration = $duration->format('%hh %im');
            $flight->scheduled = $data->departure->scheduled;
            $flight->estimated = $data->arrival->estimated;
            // $flight->status = $data->flight_status;
            $flight->date = $data->flight_date;
            $flight->save();
        };
    }
}

<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Carbon\Carbon;
use App\Models\Flight;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

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

        $response = Flight::fetchData(env('API_KEY_2'));

        foreach ($response['data'] as $data) {
            $airline = $data['airline']['name'] . ' (' . $data['flight']['iata'] . ')';
            $departure = $data['departure']['airport'] . ' (' . $data['departure']['iata'] . ')';
            $arrival = $data['arrival']['airport'] . ' (' . $data['arrival']['iata'] . ')';
            $class = array_rand(array_flip(['Economy', 'Business', 'First Class', 'Premium Economy']));
            $price = floor(rand(1000000, 10000000) / 1000) * 1000;
            $duration = Carbon::parse($data['departure']['scheduled'])->diff(Carbon::parse($data['arrival']['estimated']))->format('%hh %im');
            $scheduled = $data['departure']['scheduled'];
            $estimated = $data['arrival']['estimated'];
            $date = $data['flight_date'];

            DB::table('flights')->insert([
                [
                    'airline' => $airline,
                    'departure' => $departure,
                    'arrival' => $arrival,
                    'class' => $class,
                    'price' => $price,
                    'duration' => $duration,
                    'scheduled' => $scheduled,
                    'estimated' => $estimated,
                    'date' => $date,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]
            ]);
        }
    }
}

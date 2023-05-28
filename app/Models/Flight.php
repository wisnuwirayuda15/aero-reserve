<?php

namespace App\Models;

use Illuminate\Support\Facades\Http;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Flight extends Model
{
    use HasFactory;

    protected $protected = [
        'id'
    ];

    public function fetchData(string $access_key, int $limit = 50, int|null $offset = null)
    {
        $queryString = http_build_query([
            'access_key' => $access_key,
            'limit' => $limit,
            'offset' => $offset
        ]);

        $response = Http::get('http://api.aviationstack.com/v1/flights?' . $queryString);

        if ($response->failed()) {
            return $response->json();
        }

        return $response->json();
    }
}

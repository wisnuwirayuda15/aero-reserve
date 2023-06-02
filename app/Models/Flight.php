<?php

namespace App\Models;

use Illuminate\Support\Facades\Http;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Flight extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public static function fetchData(string $access_key, int|null $limit = null, int|null $offset = null)
    {
        $queryString = http_build_query([
            'access_key' => $access_key,
            'limit' => $limit,
            'offset' => $offset,
        ]);

        $response = Http::get("http://api.aviationstack.com/v1/flights?$queryString");

        if ($response->failed()) {
            return $response->json();
        }

        return $response->json();
    }

    public static function keyCheck($apiKey)
    {
        if (!$apiKey) {
            return [
                'error' => [
                    'code' => 'missing_api_key',
                    'message' => 'Anda harus memasukan API key untuk menggunakan layanan kami. Lihat dokumentasi bagaimana cara mendapatkan API key.'
                ]
            ];
        }

        $keys = Key::whereRaw("BINARY api_key = '$apiKey'")->first();

        if (!$keys) {
            return [
                'error' => [
                    'code' => 'invalid_api_key',
                    'message' => 'API key tidak valid.'
                ]
            ];
        }

        $keys->update([
            'usage' => $keys->usage += 1
        ]);
    }

    public function scopeId($query, $id)
    {
        if ($id) {
            return $query->where('id', $id);
        }
    }

    public function scopeLimits($query, $limit)
    {
        if ($limit) {
            return $query->limit($limit);
        }
    }

    public function scopeSort($query, $sort)
    {
        if ($sort) {
            $sorts = explode('.', $sort);
            return $query->orderBy($sorts[0], $sorts[1]);
        }
    }

    public function scopeFilter($query, $filter)
    {
        if ($filter) {
            if (strstr($filter, ',')) {
                $filters = explode(',', $filter);
                return $query->select($filters);
            } else {
                return $query->select($filter)
                    ->whereNotNull($filter);
            }
        }
    }

    public function scopeClass($query, $class)
    {
        if ($class) {
            return $query->where('class', $class);
        }
    }

    public function scopeWithPaginate($query, $paginate)
    {
        if ($paginate) {
            return $query->paginate($paginate)
                ->withQueryString();
        } else {
            return $query->get();
        }
    }

    public function scopePrice($query, $price)
    {
        if ($price) {
            $prices = explode('.', $price);
            return $query->where('price', $prices[0], $prices[1]);
        }
    }

    public function scopeSearch($query, $search)
    {
        if ($search) {
            return $query->where('airline', 'LIKE', "%$search%")
                ->orwhere('departure', 'LIKE', "%$search%")
                ->orwhere('arrival', 'LIKE', "%$search%")
                ->orwhere('class', 'LIKE', "%$search%")
                ->orwhere('duration', 'LIKE', "%$search%")
                ->orwhere('scheduled', 'LIKE', "%$search%")
                ->orwhere('estimated', 'LIKE', "%$search%")
                ->orwhere('date', 'LIKE', "%$search%");
        }
    }
}

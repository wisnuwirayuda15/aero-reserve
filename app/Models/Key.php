<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Key extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public static function check($apiKey)
    {
        if (!$apiKey) {
            return [
                'status' => 401,
                'error' => [
                    'code' => 'missing_api_key',
                    'message' => 'Anda harus memasukan API key untuk menggunakan layanan kami. Lihat dokumentasi bagaimana cara mendapatkan API key.'
                ]
            ];
        }

        $keys = Key::whereRaw("BINARY api_key = '$apiKey'")->first();

        if (!$keys) {
            return [
                'status' => 401,
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

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Key;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * User register.
     */
    public function register(Request $request)
    {
        $credentials = [
            'name' => $request->name,
            'email' => $request->email,
            'password' => $request->password,
        ];

        $validators = [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
        ];

        $validation = Validator::make($credentials, $validators);

        if ($validation->fails()) {
            return response()->json([
                'status' => 422,
                'message' => 'Validasi gagal.',
                'errors' => $validation->errors(),
            ], 422);
        }

        $credentials['password'] = bcrypt($credentials['password']);

        $user = User::create($credentials);

        Key::create([
            'user_id' => $user->id,
            'api_key' => Str::random(32),
        ]);

        return response()->json([
            'status' => 201,
            'message' => 'Registrasi berhasil. Silahkan login untuk mengakses API key.',
        ], 201);
    }

    /**
     * User login.
     */
    public function login(Request $request)
    {
        if (!$request->email || !$request->password) {
            return response()->json([
                'status' => 401,
                'error' => [
                    'code' => 'missing_required_credentials',
                    'message' => 'Email dan password dibutuhkan untuk login.'
                ]
            ], 401);
        }

        $credentials = [
            'email' => $request->email,
            'password' => $request->password,
        ];

        if (Auth::attempt($credentials)) {
            $user = auth()->user();

            return response()->json([
                'status' => 200,
                'message' => 'Login berhasil.',
                'data' => [
                    'name' => $user->name,
                    'email' => $user->email,
                    'registered_at' => $user->created_at->format('d F Y, h:i A'),
                    'api_key' => $user->key->api_key,
                    'api_usage' => $user->key->usage,
                ]
            ], 200);
        };

        return response()->json([
            'status' => 401,
            'error' => [
                'code' => 'invalid_credentials',
                'message' => 'Email atau password salah.'
            ]
        ], 401);
    }

    /**
     * API key reset.
     */
    public function keyReset(Request $request)
    {
        if (!$request->email || !$request->password || !$request->api_key) {
            return response()->json([
                'status' => 401,
                'error' => [
                    'code' => 'missing_required_credentials',
                    'message' => 'Email, password, dan API key lama anda dibutuhkan untuk me-reset API key.'
                ]
            ], 401);
        }

        $credentials = [
            'email' => $request->email,
            'password' => $request->password,
        ];

        if (Auth::attempt($credentials)) {
            $user = auth()->user();

            if ($request->api_key !== $user->key->api_key) {
                return response()->json([
                    'error' => [
                        'code' => 'invalid_api_key',
                        'message' => 'API key tidak valid.'
                    ]
                ], 401);
            }

            $user->key->update([
                'api_key' => Str::random(32),
                'usage' => 0,
            ]);

            return response()->json([
                'status' => 200,
                'message' => 'API key anda berhasil direset.',
                'data' => [
                    'new_api_key' => $user->key->api_key,
                    'times_reset' => $user->key->api_key,
                ]
            ], 200);
        };

        return response()->json([
            'status' => 401,
            'error' => [
                'code' => 'invalid_credentials',
                'message' => 'Email atau password salah.'
            ]
        ], 401);
    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        //
    }
}

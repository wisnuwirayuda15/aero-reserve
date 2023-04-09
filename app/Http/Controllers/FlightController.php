<?php

namespace App\Http\Controllers;

use Exception;
use App\Models\Flight;
use Illuminate\Http\Request;

class FlightController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        try {
            if (!isset($request->key) || $request->key != 'kelompok3') {
                return response()->json([
                    'error' => [
                        'code' => 'invalid_key',
                        'message' => 'Invalid API key.'
                    ]
                ], 401);
            } else {
                $queryString = $request->query();
                $limit = $queryString['limit'] ? $queryString['limit'] : '';
                unset($queryString['key'], $queryString['limit']);
                if (isset($request->search)) {
                    $flight = Flight::limit($limit)->where('airline', 'LIKE', "%$request->search%")
                        ->orwhere('id', 'LIKE', "%$request->search%")
                        ->orwhere('flight_code', 'LIKE', "%$request->search%")
                        ->orwhere('departure', 'LIKE', "%$request->search%")
                        ->orwhere('arrival', 'LIKE', "%$request->search%")
                        ->orwhere('scheduled', 'LIKE', "%$request->search%")
                        ->orwhere('estimated', 'LIKE', "%$request->search%")
                        ->orwhere('status', 'LIKE', "%$request->search%")
                        ->orwhere('date', 'LIKE', "%$request->search%")
                        ->get();
                    if ($flight->isEmpty()) {
                        return response()->json([
                            'error' => [
                                'code' => 'empty_data',
                                'message' => 'Data tidak ditemukan.'
                            ]
                        ], 500);
                    }
                } else if ($queryString) {
                    if (array_key_exists('search', $queryString)) {
                        return response()->json([
                            'error' => [
                                'code' => 'search_null',
                                'message' => 'Value untuk parameter [search] diperlukan.'
                            ]
                        ], 400);
                    }
                    $flight = Flight::limit($limit)->select(array_keys($queryString))->get();
                } else {
                    $flight = Flight::limit($limit)->get();
                };
                return response()->json([
                    $flight
                ]);
            }
        } catch (Exception $e) {
            // return $e;
            return response()->json([
                'error' => [
                    'code' => 'request_error',
                    'message' => 'Request error. Pastikan parameter yang anda masukan sudah sesuai.'
                ]
            ], 400);
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Flight $flight)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Flight $flight)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Flight $flight)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Flight $flight)
    {
        //
    }
}

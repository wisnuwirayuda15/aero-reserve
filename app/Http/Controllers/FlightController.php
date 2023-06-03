<?php

namespace App\Http\Controllers;

use App\Models\Flight;
use App\Models\Key;
use Illuminate\Http\Request;

class FlightController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $keyCheck = Key::check(request('api_key'));

        if ($keyCheck) {
            return response()->json($keyCheck, 401);
        }

        $flights = Flight::id(request('id'))
            ->filter(request('select_only'))
            ->class(request('class'))
            ->search(request('search'))
            ->sort(request('sort_by'))
            ->price(request('price'))
            ->limits(request('limit') ?? 10)
            ->withPaginate(request('paginate'));

        if ($flights->isEmpty()) {
            return response()->json([
                'status' => 404,
                'error' => [
                    'code' => 'data_not_found',
                    'message' => 'Data tidak ditemukan.'
                ]
            ], 404);
        }

        return response()->json([
            'status' => 200,
            'properties' => [
                'count' => $flights->count(),
                'total' => Flight::count(),
            ],
            'data' => $flights
        ], 200);
    }

    /**
     * Display a listing of the resource.
     */
    public function view()
    {
        $response = Flight::fetchData(env('API_KEY_1'));

        return view('index', [
            'api_result' => $response['data']
        ]);
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

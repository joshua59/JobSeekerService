<?php

namespace App\Http\Controllers;

use App\Models\Candidate;
use App\Http\Requests\StoreCandidateRequest;
use App\Http\Requests\UpdateCandidateRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CandidateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([
            'message' => 'success',
            'data' => Candidate::all(),
        ], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreCandidateRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|unique:t_candidate,email',
            'phone_number' => 'nullable|numeric|unique:t_candidate,phone_number',
            'full_name' => 'required|string|max:100',
            'dob' => 'required|date',
            'pob' => 'required',
            'gender' => 'required|in:f,m',
            'year_exp' => 'required|numeric',
            'last_salary' => 'nullable',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $candidate = Candidate::create($request->all());
        return response()->json([
            'message' => 'Stored Successfully',
            'data' => $candidate,
        ], 201);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Candidate  $candidate
     * @return \Illuminate\Http\Response
     */
    public function show(Candidate $candidate)
    {
        return response()->json([
            'message' => 'success',
            'data' => $candidate,
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Candidate  $candidate
     * @return \Illuminate\Http\Response
     */
    public function edit(Candidate $candidate)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCandidateRequest  $request
     * @param  \App\Models\Candidate  $candidate
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Candidate $candidate)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|unique:t_candidate,email,'.$candidate->id,
            'phone_number' => 'nullable|numeric|unique:t_candidate,phone_number,'.$candidate->id,
            'full_name' => 'required|string|max:100',
            'dob' => 'required|date',
            'pob' => 'required',
            'gender' => 'required|in:f,m',
            'year_exp' => 'required|numeric',
            'last_salary' => 'nullable',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $candidate->update($request->all());
        return response()->json([
            'message' => 'Updated successfully',
            'data' => $candidate,
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Candidate  $candidate
     * @return \Illuminate\Http\Response
     */
    public function destroy(Candidate $candidate)
    {
        $candidate->delete();
        return response()->json([
            'message' => 'Deleted successfully',
        ], 200);
    }
}

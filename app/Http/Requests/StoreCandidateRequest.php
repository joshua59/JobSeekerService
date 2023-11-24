<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreCandidateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email' => 'required|email|unique:t_candidate,email',
            'phone_number' => 'nullable|numeric|unique:t_candidate,phone_number',
            'full_name' => 'required|string|max:100',
            'dob' => 'required|date',
            'pob' => 'required',
            'gender' => 'required|in:f,m',
            'year_exp' => 'required|numeric',
            'last_salary' => 'nullable|numeric',
        ];
    }
}

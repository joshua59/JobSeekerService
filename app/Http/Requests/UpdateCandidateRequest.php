<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCandidateRequest extends FormRequest
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
            'email' => 'required|email|unique:t_candidate,email,' . $this->candidate->id,
            'phone_number' => 'nullable|numeric|unique:t_candidate,phone_number,' . $this->candidate->id,
            'full_name' => 'required|string|max:100',
            'dob' => 'required|date',
            'pob' => 'required',
            'gender' => 'required|in:F,M',
            'year_exp' => 'required|numeric',
            'last_salary' => 'nullable|numeric',
        ];
    }
}

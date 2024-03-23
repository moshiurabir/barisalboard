<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SscpaymentCreateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'numberofstudent' => 'required|integer|digits_between:1,4',
        ];

    }

    public function messages(): array
    {
        return [
            'numberofstudent.required' => 'The number of student field is required.',
            'numberofstudent.digits_between' => 'The number of student must be between 1 and 2000.',
            'numberofstudent.integer' => 'The number of student must be an integer value.',
        ];
    }
}

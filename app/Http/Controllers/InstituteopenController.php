<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Instituteopen;


class InstituteopenController extends Controller
{
    public function create()
    {
        return view('instituteopen.create');
    }

    public function store(Request $request)
    {
       ($request->all());

        $request->validate([
            'name' => 'required',
            'mobile' => 'required',
            'email' => 'required'
        ]);
      //  $ssc_payment = new Ssc_payment;
       // $ssc_payment->numberofstudent = $request->numberofstudent;

        $institute_open= Instituteopen::create($request->except('_token'));
        if ($institute_open) {
            return redirect()->route('institute-open-application.create')->with('success', 'Data inserted successfully');
        }

    }

    // public function store(InstituteopenFormRequest $request)
    // {
    //     dd($request->all());
    //     $date=$request->validated();

    //     $institute_open= Instituteopen::create($data);
    //     if ($institute_open) {
    //         return redirect()->route('institute-open-application.create')->with('success', 'Data inserted successfully');
    //     }

    // }
}

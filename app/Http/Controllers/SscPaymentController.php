<?php

namespace App\Http\Controllers;

use App\Models\ssc_payment;
use Illuminate\Http\Request;

class SscPaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       return view('adminbackend/ssc_registration/ssc_payment');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('adminbackend/ssc_registration/ssc_payment_add');
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
    public function show(ssc_payment $ssc_payment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ssc_payment $ssc_payment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ssc_payment $ssc_payment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ssc_payment $ssc_payment)
    {
        //
    }
}

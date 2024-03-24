<?php

namespace App\Observers;

use App\Models\Ssc_payment;
use Auth;

class SscpaymentObserver
{
    /**
     * Handle the Ssc_payment "created" event.
     */
    public function created(Ssc_payment $ssc_payment): void
    {
        $ssc_payment->eiin =  Auth::guard('admin')->user()->eiin;
        $ssc_payment->created_by =  Auth::guard('admin')->user()->id;
        $ssc_payment->save();
    }

    /**
     * Handle the Ssc_payment "updated" event.
     */
    public function updated(Ssc_payment $ssc_payment): void
    {
        //
    }

    /**
     * Handle the Ssc_payment "deleted" event.
     */
    public function deleted(Ssc_payment $ssc_payment): void
    {
        //
    }

    /**
     * Handle the Ssc_payment "restored" event.
     */
    public function restored(Ssc_payment $ssc_payment): void
    {
        //
    }

    /**
     * Handle the Ssc_payment "force deleted" event.
     */
    public function forceDeleted(Ssc_payment $ssc_payment): void
    {
        //
    }
}

<?php

namespace App\Http\Middleware;
use Auth;
use Illuminate\Support\Facades\DB;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckSingleSessionAdmin
{
    public function handle(Request $request, Closure $next)
    {
        if (Auth::guard('admin')->check()) {


            $current_session = session()->getId();
            // dd($current_session);
            if(DB::table('sessions')->where('id', '!=', $current_session)->where('admin_id', Auth::guard('admin')->user()->id)->exists())
            {
                DB::table('sessions')->where('id', '!=', $current_session)->where('admin_id', Auth::guard('admin')->user()->id)->delete();
            }




           /* $previous_session_admin = Auth::guard('admin')->user()->session_id;
            if ($previous_session_admin !== session()->getId()) {
                Session::getHandler()->destroy($previous_session_admin);
                $request->session()->regenerate();
                Auth::guard('admin')->user()->session_id = session()->getId();
                Auth::guard('admin')->user()->save();

            }
*/


        }
        return $next($request);
    }
}

<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckSingleSessionAdmin
{
    public function handle(Request $request, Closure $next)
    {
        if (Auth::guard('admin')->check()) {
            $previous_session_admin = Auth::guard('admin')->user()->session_id;
            if ($previous_session_admin !== session()->getId()) {
                Session::getHandler()->destroy($previous_session_admin);
                $request->session()->regenerate();
                Auth::guard('admin')->user()->session_id = session()->getId();
                Auth::guard('admin')->user()->save();
            }
        }
        return $next($request);
    }
}

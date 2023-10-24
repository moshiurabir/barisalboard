<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class BoardcpController extends Controller
{
    public function BoardcpDashboard()
    {
        return view('boardcp.index');
    }

    public function BoardcpLogout(Request $request)
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/login');
    }
    public function BoardcpLogin(){
        return view('boardcp.admin_login');
    }
}

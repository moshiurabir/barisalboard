<?php

namespace App\Http\Controllers\Auth;

use Illuminate\View\View;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Session;
use App\Http\Requests\Auth\LoginRequest;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();

        $request->session()->regenerate();







        $url='';
        if($request->user()->role === 'admin')
        {






               /* if(session_id() != Auth::user()->last_session){
                  Auth::logout();
                  return redirect('boardcp/login');
                }
            else{
                $session_id = Session::getId();
                $request->user()->last_session = $session_id;
                $request->user()->save();

             }
*/


$url='boardcp/dashboard';

        }
        elseif($request->user()->role === 'exam')
        {
            $url='examcp/dashboard';
        }
        elseif($request->user()->role === 'accounts')
        {
            $url='accountscp/dashboard';
        }
        elseif($request->user()->role === 'user')
        {
            $url='/dashboard';
        }


        return redirect()->intended($url);
    }
    /*
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();

        $request->session()->regenerate();

        return redirect()->intended(RouteServiceProvider::HOME);
    }
*/
    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}

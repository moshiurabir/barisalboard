<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use Illuminate\Support\Facades\DB;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    //
    public function Index()
    {
        if (! Auth::guard('admin')->check()) {

            return view('admin.admin_login');

        }

        return redirect()->route('admin.dashboard');

    }

    public function Dashboard()
    {
        DB::table('sessions')->where('id', session()->getId())->update(['admin_id' => Auth::guard('admin')->user()->id]);
        return view('admin.index');
    }

    /*public function Login(Request $request)
    {
        // return view('admin.admin_login');

        //dd($request->all());
        $check = $request->all();
        if (Auth::guard('admin')->attempt(['email' => $check['email'], 'password' => $check['password'], 'status' => 1])) {
            return redirect()->route('admin.dashboard')->with('error', 'Admin Login Successfully');
        } else {
            return back()->with('error', 'Admin Login Failed');
        }
    }
*/
public function Login(Request $request)
    {
        // return view('admin.admin_login');

        //dd($request->all());
        $check = $request->all();
        if (Auth::guard('admin')->attempt(['email' => $check['email'], 'password' => $check['password'], 'status' => 1])) {
                $admin = Admin::where('email', $request->email)->first();
                $admin->session_id = session()->getId();
                $admin->save();

                return redirect()->route('admin.dashboard')->with('error', 'Admin Login Successfully');

        } else {
            return back()->with('error', 'Admin Login Failed');
        }
    }

    public function AdminLogout()
    {
        Auth::guard('admin')->logout();

        return redirect()->route('login_from')->with('success', 'Admin Logout Successfully');
    }

    public function AdminRegister()
    {
        return view('admin.admin_register');
    }

    public function AdminRegisterCreate(Request $request)
    {
        //dd($request->all());
        $name = $request->name;
        $eiin = $request->eiin;
        $email = $request->email;
        $password = $request->password;

        $this->validate($request, [
            'name' => 'required|min:3|max:50',
            'email' => 'required|email',
            'eiin' => 'required|max:6',
            'password' => 'required|confirmed|min:6|required_with:password_confirmation|same:password_confirmation',
            'password_confirmation' => 'min:6',
        ]);

        $check = Admin::where('eiin', $eiin)->orwhere('email', $email)->first();
        if ($check) {
            return back()->with('error', 'Admin Already Exist');
        } else {
            Admin::create([
                'name' => $request->name,
                'eiin' => $request->eiin,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'created_at' => Carbon::now(),
            ]);

            return redirect()->route('login_from')->with('error', 'Admin Created Successfully');
        }
        /*
                Admin::create([
                    'name' => $request->name,
                    'eiin' => $request->eiin,
                    'email' => $request->email,
                    'password' => Hash::make($request->password),
                    'created_at' => Carbon::now(),
                ]);
                return redirect()->route('login_from')->with('error','Admin Created Successfully');
                */
    }
}

<?php

namespace App\Http\Controllers;

use Auth;
use Carbon\Carbon;
use App\Models\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    //
    public function Index(){
        return view('admin.admin_login');

    }
    public function Dashboard(){
        return view('admin.index');
    }

    public function Login(Request $request){
       // return view('admin.admin_login');

       //dd($request->all());
       $check = $request->all();
       if(Auth::guard('admin')->attempt(['email'=>$check['email'],'password'=>$check['password'],'status'=>1])){
           return redirect()->route('admin.dashboard')->with('error','Admin Login Successfully');
       } else{
           return back()->with('error','Admin Login Failed');
       }
    }

    public function AdminLogout(){
        Auth::guard('admin')->logout();
        return redirect()->route('login_from')->with('error','Admin Logout Successfully');
    }

    public function AdminRegister(){
        return view('admin.admin_register');
    }

    public function AdminRegisterCreate(Request $request){
        //dd($request->all());

        Admin::create([
            'name' => $request->name,
            'eiin' => $request->eiin,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'created_at' => Carbon::now(),
        ]);
        return redirect()->route('login_from')->with('error','Admin Created Successfully');
    }

}

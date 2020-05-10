<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;

class RegistrationController extends Controller
{
    public function __construct(){
        $this->middleware('guest');
    }
    
    public function form(){
        return view('users.register');
    }

    public function register(Request $request){
        $request->validate([
            'username' => 'required|string|max:255|alpha_num|unique:users',
            'password' => 'required|string|max:255|confirmed',
            'full_name'=>'required|string|max:255',
            'email'=>'required|email|unique:users',
            'phone'=>'required|numeric|digits:11'
        ]);

        $newUser = User::create([
            'full_name' => $request->post('full_name'),
            'password'  => bcrypt($request->post('password')),
            'is_admin' => false,
            'username' => $request->post('username'),
            'email' => $request->post('email'),
            'phone' => $request->post('phone')
        ]);

        if($newUser){
            return redirect()->route('login-form')->with('success', 'Registration Successful. Please Login');
        }
    }


}

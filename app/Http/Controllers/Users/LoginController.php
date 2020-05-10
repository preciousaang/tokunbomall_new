<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class LoginController extends Controller
{
    public function __construct(){
        $this->middleware('guest')->except('logout');
    }


    public function form(){
        return view('users.login');
    }

    public function login(Request $request){
        $credentials = $request->only('username', 'password');
        if(Auth::attempt($credentials)){
            return redirect()->intended(route('home'));
        }else{
            $user = User::where('username', $request->post('username'))->first();
            if($user){
                if(sha1($request->post('password')) === $user->password){
                    $user->password = bcrypt($request->post('password'));
                    $user->save();
                    Auth::login($user);
                    return redirect()->intended(route('home'));
                }else{
                    return redirect()->back()->with('error', 'Username/Password Combo Incorrect');
                }
            }else{
                return redirect()->back()->with('error', 'Username/Password Combo Incorrect');
            }
        }
    }

    public function logout(){
        auth()->logout();
        return redirect()->route('login-form')->with('message', 'You have logged Out');
    }
}

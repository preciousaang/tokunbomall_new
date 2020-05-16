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
            if(auth()->user()->is_admin==1){
                return redirect()->intended(route('dashboard'));
            }
            return redirect()->intended(route('my-ads'));
        }else{
            $user = User::where('username', $request->post('username'))->first();
            if($user){
                if(sha1($request->post('password')) === $user->password){
                    $user->password = bcrypt($request->post('password'));
                    $user->save();
                    Auth::login($user);
                    if(auth()->user()->is_admin==1){
                        return redirect()->intended(route('dashboard'));
                    }
                    return redirect()->intended(route('my-ads'));
                }else{
                    return redirect()->back()->with('error', 'Username/Password Combination Incorrect');
                }
            }else{
                return redirect()->back()->with('error', 'Username/Password Combination Incorrect');
            }
        }
    }

    public function logout(){
        auth()->logout();
        return redirect()->route('login-form')->with('message', 'You have logged Out');
    }
}

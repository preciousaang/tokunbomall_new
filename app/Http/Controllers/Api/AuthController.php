<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;
use App\User;

class AuthController extends Controller
{
    public function login(Request $request){
        $request->validate([
            'username' => 'required',
            'password' => 'required',
            'device_name'=>'required'
        ]);

        $user = User::where('username', $request->username)->first();

        if(!$user || !Hash::check($request->password, $user->password)){
            throw ValidationException::withMessages([
                'username' => ['The provided credentials are incorrect']
            ]);
        }

        return $user->createToken($request->device_name)->plainTextToken;
    }


    public function logout(){

    }
}

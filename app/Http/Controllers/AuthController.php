<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Auth;
class AuthController extends Controller
{
    public function index(){
        return view('login');
    }

    public function login(Request $request){
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        if(Auth::attempt(["email"=>$request->email,"password"=>$request->password])){
            return redirect()->route('show.post');
        }else{
            return redirect()->back()->with('msg','Invalid email or password');
        }
    }
}

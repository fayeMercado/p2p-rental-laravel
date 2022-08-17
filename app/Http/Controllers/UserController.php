<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    public function register(Request $req)
    {
        $user= new User;
        $user->cart_id= $req->input("cart_id");
        $user->firstname= $req->input("firstname");
        $user->lastname= $req->input("lastname");
        $user->address= $req->input("address");
        $user->mobile= $req->input("mobile");
        $user->username= $req->input("username");
        $user->email= $req->input("email");
        $user->password= Hash::make($req->input("password"));
        $user->save();
        return response()->json($user, 200);
    }

    // public function login(Request $req)
    // {
    //     $user= User::where('email', $req->email)->first();
    //     if(!$user || !Hash::check($req->password,$user->password))
    //     {
    //         return ["error"=>"Email or password is not matched"];
    //     }
    //     return $user;
    // }

    function login(Request $req)
    {
        $email =  $req->input('email');
        $password = $req->input('password');
 
        $user= User::where('email', $req->email)->first();
        if(!Hash::check($req->password,$user->password))
        {
            return response()->json(["error"=>"Email or password is not matched"], 422);
        }
        else
        {
          return response()->json($user, 200);
        }
    }

    public function getProfile() {
        $profile = User::all();
        return $profile;
    }



    // public function patchProfile() {
    //     $profile = User::all();
    //     return $profile;
    // }


}



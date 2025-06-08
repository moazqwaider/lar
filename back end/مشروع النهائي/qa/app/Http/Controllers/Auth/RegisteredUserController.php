<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Models\company;
use Illuminate\Http\Request;
use Illuminate\Validation\Rules;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Auth\Events\Registered;
use App\Providers\RouteServiceProvider;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     *
     * @return \Illuminate\View\View
     */
    // public function reg()
    // {
    //     $company=company::all();

    //       return view('auth.register.blade.php',compact('company'));


    // }
    public function create()

    {
              $company=company::all();

        return view('auth.register',compact('company'));

    }

    /**
     * Handle an incoming registration request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
            'role_id'=>['required'],
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'company_id'=>1,
            'country_id'=>2,
        ]);

            if($request->role_id=="company"){

                $company=company::create(["owner_id"=>$user->id]);
                $result=$company->id;
                $user->company_id =$result;
                $user->save();


            }
            Auth::login($user);
           $user->assignRole($request->role_id);
           event(new Registered($user));


        return redirect(RouteServiceProvider::HOME);
    }
}

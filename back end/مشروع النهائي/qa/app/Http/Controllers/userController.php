<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use GuzzleHttp\Middleware;

class userController extends Controller
{

    function __construct()
    {
        $this->middleware('permission:employee..list|employee..create|employee..adit|employee..delete',['only'=>['index','show']]);
        $this->middleware('permission:employee..create',['only'=>['create','store']]);
        $this->middleware('permission:employee..adit',['only'=>['adit','update']]);
        $this->middleware('permission:employee..delete',['only'=>['delete']]);




    }
     public function index()
    {


        $user = User::latest()->where('company_id',Auth::user()->company_id)->simplepaginate(10);

        return view('user.index', compact('user'));
    //   $user=User::all();
    //     //$user =DB::table('users')->get();
    //   return view('user.index',compact('user'));
    }


    public function create()
    {
        $user=User::all();

         return view('user.create',compact('user'));
    }



    public function store(User $user, StoreUserRequest $request)
    {

        $user = new User();


        $user->name=$request->name;
        $user->email = $request->email;
        $user->company_id=Auth::user()->company_id;
        $user->country_id=Auth::user()->company_id;
        $user->password=Hash::make($request->get('password'));
        $user->save();
        return redirect()->route('user.index')
       ->with('Success',__('User created successfully.'));


    }
        // $user->create([
        //            'name'=>$request->get('name'),
        //            'email'=>$request->get('email'),
        //            'company_id'=>Auth::user()->company_id,
        //            'password'=>Hash::make($request->get('password'))


        // ]);

        // return redirect()->route('user.index')
        //     ->withSuccess(__('User created successfully.'));




    ///////////////////////////////

    public function show(User $user)
    {
        return view('user.show', [
            'user' => $user
        ]);
    }


    public function edit(User $user)
    {
        return view('user.edit',compact('user'));
    }

    public function update ($id, Request $request)
    {
        User::where('id',$id)->update([
            'name'=>$request->name,
            'email'=>$request->email,


        ]);

        return redirect()->route('user.index')
            ->with('Success',__('EMPLOYEE updated successfully.'));
    }


    public function destroy($id)
    {
        user::destroy($id);
        $user=User::all();

        return redirect()->route('user.index',compact('user'))->with('Success',__('EMPLOYEE DELETED successfully'));
    }
}

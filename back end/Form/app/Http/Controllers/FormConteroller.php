<?php

namespace App\Http\Controllers;

use App\Http\Requests\Form1Requset;
use App\Rules\countWorde;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;

class FormConteroller extends Controller
{
    function form1(){
       return view('forms.form1');


    }
    function form1_data(Form1Requset $request){
     //   dd($request->all());
        //dd($request->except('_token'));
      //  dd($request->only('name','_token'));
///1.
    //   $request->validate([
    //       'name'=>'required|min:4|max:30',
    //       'email'=>'required|email|ends_with:gmail.com',
    //       'bio'=>['nullable',new countWorde(5)],

    //   ],
    // [
    //         'name.required'=>'هذا الحقل مطلوب*'

    // ]);

///2.

//   $valid_data=Validator::make($request->all(),[
//     'name'=>'required|min:4|max:30',
//            'email'=>'required|email|ends_with:gmail.com',
//           'bio'=>['nullable',new countWorde(5)],
//   ]);
//   if($valid_data->fails()){

//      return redirect()->back()->withErrors($valid_data)->withInput();

//   }


//   if($valid_data->fails()){
//     return response()->json([
//          'status'=>false,
//          'message'=>$valid_data->errors(),
//          'data'=>[]
//     ]);
//   }

// 3 افضل طريقة


dd($request->validated());

    }

    function form2(){
        return view('forms.form2');
    }
    function form2_data(Request $request){




        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email',
            'dob' => 'date',
            'graduation' => 'date|after:dob',
        ]);

        dd($request->all());



    }

    function form3(){
        return view('forms.form3');
    }
    function form3_data(Request $request){




        $request->validate([
            'name' => 'required|string',
            'image' => 'required|image',
        ]);

        // dd($request->all());
        //انشاء مجلد لصور
        // if(!file_exists('images')){
        //        mkdir('images');
        // }
        // //لمعرفة اسم الصورة
        //      $imgnmae=$request->file('image')->getClientOriginalName();
        //    //لتغير اسم الصورة مع اضافة التاريخ
        //      $imgnmae=str_replace(' ','-',
        //      strtolower($request->name))
        //       .'-'.date('d-m-y').'-'. $imgnmae;

        //      //تخزين الصورة
        //     $request->file('image')
        //     ->move(public_path('images'),
        //       $imgnmae);

        $path = $request->file('image')->storePublicly('images','public');
        return view('forms.form3-image',compact('path'));

    }





}

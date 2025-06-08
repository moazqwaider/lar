<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FrontController extends Controller
{
    function index(){
        return view('index');
 }

    function about(){
         return view('about');
 }

    function contact(){
      return view('contact');
 }
 function contact_data(){
    return view('done');
}

    function  feature(){
      return view('feature');
 }

    function project(){
      return view('project');
 }

 function service(){
      return view('service');
 }

 function team(){
      return view('team');
 }

 function testimonial(){
      return view('testimonial');
 }
}

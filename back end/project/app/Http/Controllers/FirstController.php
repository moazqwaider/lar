<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FirstController extends Controller
{
    function home(){

        $posts=[
            [
                'id'=>1,
                'title'=>'title1',
                'content'=>'lorem 1',
            ],
            [
                'id'=>2,
                'title'=>'title2',
                'content'=>'lorem 2',
            ],
            [
                'id'=>3,
                'title'=>'title3',
                'content'=>'lorem 3',
            ],
            [
                'id'=>4,
                'title'=>'title4',
                'content'=>'lorem 4',
            ],
            [
                'id'=>5,
                'title'=>'title5',
                'content'=>'lorem 5',
            ],
            ];

            //   return view('home')->with('posts',$posts);
           return view('home',compact('posts'));
        }

function about(){
    return view('');
}

function contact(){
    return view('');
}

function contactData(){
    return view('');
}


}

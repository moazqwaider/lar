<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CourseController extends BaseController
{
    function store(Request $resquest){
        $this->uploadImage($resquest->file('image'),'posts');
    }
    
}

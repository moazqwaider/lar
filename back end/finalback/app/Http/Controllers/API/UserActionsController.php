<?php

namespace App\Http\Controllers\API;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\ServiceResource;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\API\BaseController;
use GuzzleHttp\Exception\ServerException;

class UserActionsController extends BaseController
{
    function services(Request $request) {
        $data = ServiceResource::collection($request->user()->services);
        return $this->message($data,'Your services',true,200);

    }

    function services_store(Request $request){
        return $request->all();
        $validator = Validator::make($request->all(), [
            'name_en' => 'required',
            'name_ar' => 'required',
            'image' => 'required',
            'image' => 'required',
            'gallery' => 'required',
            'description_en' => 'required',
            'description_ar' => 'required',
            'discount' => 'required',
            'discount_type' => 'required',
            'category_id' => 'required|exists:categories,id',
        ]);

        if($validator->fails()) {
            return $this->message($validator->errors(), 'Login Failed', false, 500);
        }



            $data=$request->except('image','gallery','name_en','name_ar','description_en','description_ar');
            $data['name']=null;
            $data['description']=null;
            $data['slug']= Str::slug($request->name_en);


           $service=   $request->user()->services()->create($data);

        $cover = $request->file('image')->store('images','files');

        $service->image->create([
            'path'=>$cover,
            'type'=>'cover'
        ]);

        foreach($request->gallery as $gallery){
            $path = $gallery->store('images','files');
            $service->images->create([
                'path'=>$path,
                'type'=>'gallery'
            ]);


        }

        return $this->message(new ServiceResource($service),'New service added');

    }

}

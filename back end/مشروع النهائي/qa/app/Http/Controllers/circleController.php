<?php

namespace App\Http\Controllers;

use App\Models\court;
use App\Models\circle;
use App\Models\country;
use Illuminate\Http\Request;

class circleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $circle=circle::latest()->simplepaginate(3);
        $court=court::all();
        return view('circle.index',compact('circle','court'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $circle=circle::all();
        $court=court::get();
         return view('circle.create',compact('circle','court'))
                  ->with('Success',__('circle add successfully.'));
;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $circle = new circle();

        $circle->circle_name =$request->circle_name ;
        $circle->company_id=$request->company_id;
        $circle->court_name=$request->court_name;


        $circle->save();
        $circle=circle::all();

        return redirect()->route('circle.index')
        ->with('Success',__('circle add successfully.'));


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(circle $circle)

    {

        return view('circle.show', compact('circle'));


    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit()
    {
        $circle=circle::all();
        $court=court::get();
         return view('circle.createed',compact('circle','court'));


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
     //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy( circle $circle )
    {

        $circle->delete();

        return redirect()->route('circle.index')
        ->with('Success',__('circle destroy successfully.'));
    }
}

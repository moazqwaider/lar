<?php

namespace App\Http\Controllers;

use App\Models\court;
use App\Models\country;
use Illuminate\Http\Request;

class courtController extends Controller
{
      /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $court=court::latest()->simplepaginate(3);

        return view('court.index',compact('court'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $court=court::all();
        $country=country::all();

         return view('court.create',compact('country'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $court = new court();

        $court->court_name =$request->court_name;
        $court->courts=$request->courts;

        $court->save();
        $court=court::all();

        return redirect()->route('court.index')
            ->with('Success',__('court add successfully.'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(court $circle)
    {
      //  return view('circle.show', compact('circle'));


    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(court $court)
    {
         $court=court::all();
        return view('court.edit',compact('court'));

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


        court::where('id',$id)->update([
            'court_name'=>$request->court_name,
            'courts'=>$request->courts,


        ]);

        return redirect()->route('court.index')
            ->with('Success',__('EMPLOYEE updated successfully.'));
    }

    public function destroy( court $court )
    {


        $court->delete();

        return redirect()->route('court.index')
        ->with('Success',__('court destroy successfully.'));
    }

    }


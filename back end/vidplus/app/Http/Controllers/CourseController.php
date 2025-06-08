<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\CourestRequest;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
    //    $courses= DB::select(
    //     'select * from courses');
    //


         $courses= DB::table('courses')->orderBy('id','DESC')->simplePaginate(2);


        return view('courses.index',compact('courses'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('courses.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CourestRequest $request)
    {
            $data=$request->validated();
            //حذف الصورة الموجودة في قاعجة البيانات راح يساعدنا في التعديل
            unset($data['image']);

            //تحويل الاسم الي حروف صغيرة وتخزينها في السلق
              $data['slug']= Str::slug($request->name);
              $data['created_at']=now();
            //upload file
            //لو رفع صورة راح يفون على الشرط
            if($request->hasFile('image')){
                $ex=$request->file('image')->
                getClientOriginalExtension();
                $newnaem=rand().'_'.time().'_'.rand().'.'.$ex;
                $request->file('image')->move
                (public_path('images'),$newnaem);

                $data['image']=$newnaem;
            }

            DB::table('courses')->insert($data);

            return redirect()->route('courses.index');


    }

    /**
     * Display the specified resource.
     */
    public function show($slug)

    {
         $course=DB::table('courses')
         ->where('slug',$slug)->first();
            if(!$course){
                abort(404);
            }
              dd(  $course);
              return view('courses.show',
              compact('course'));

        }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
       DB::table('courses')->delete($id);
       return redirect()->route('courses.index');

    }
}

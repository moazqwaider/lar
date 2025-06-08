<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::withCount('services')->latest('id')->get();
        return view('admin.categories.index', compact('categories'));
    }

    public function create()
    {
        $categories = Category::select('id', 'name')->latest('id')->whereNull('parent_id')->get();
        $category=new Category();
        return view(
            'admin.categories.create',
            compact('categories','category')
        );
    }

    public function store(Request $request)
    {
        $request->validate([
            'name_en' => 'required',
            'name_ar' => 'required',
            'description_en' => 'required',
            'description_ar' => 'required',
            'image' => 'required',
        ]);
        // dd($request->file('image'));
        $path = $request->file('image')->store('images', 'files');

        //تحويل الحقلين الي حقل واحد
        $name = json_encode([
            'en' => $request->name_en,
            'ar' => $request->name_ar,
        ], JSON_UNESCAPED_UNICODE);

        $description = json_encode([
            'en' => $request->description_en,
            'ar' => $request->description_ar,
        ], JSON_UNESCAPED_UNICODE);

        $category = Category::create([
            'name' => $name,
            'slug' => Str::slug(($request->name_en)),
            'description' => $description,
            'icon' => $request->icon,
            'parent_id' => $request->parent_id,

        ]);
        $category->image()->create([
            'path' => $path,
            'type' => 'cover',

        ]);
        return redirect()->route('admin.categories.index')
            ->with('msg', 'Category created
       successfully')->with('type', 'success');
    }
    public function show(Category $category)
    {
    }

    public function edit(Category $category)
    {

        $categories = Category::select('id', 'name')->latest('id')->whereNull('parent_id')->get();
        return view(
            'admin.categories.edit',
            compact('categories', 'category')
        );
    }



    public function update(Request $request, Category $category)
    {



        if ($request->hasFile('image')) {
            File::delete(public_path($category->image->path));
            $path = $request->file('image')->store('images', 'files');
            $category->image()->update([
                'path' => $path,


            ]);
        }

        //تحويل الحقلين الي حقل واحد
        $name = json_encode([
            'en' => $request->name_en,
            'ar' => $request->name_ar,
        ], JSON_UNESCAPED_UNICODE);

        $description = json_encode([
            'en' => $request->description_en,
            'ar' => $request->description_ar,
        ], JSON_UNESCAPED_UNICODE);

        $category->update([
            'name' => $name,
            'slug' => Str::slug(($request->name_en)),
            'description' => $description,
            'icon' => $request->icon,
            'parent_id' => $request->parent_id,

        ]);

        return redirect()->route('admin.categories.index')
            ->with('msg', 'Category updated
           successfully')->with('type', 'success');
    }



    public function destroy(Category $category)
    {
        File::delete(public_path($category->image->path));
        $category->image()->delete();
        $category->delete();



        return redirect()->route('admin.categories.index')
            ->with('msg', 'Category deleted
           successfully')->with('type', 'danger');
    }
  
}

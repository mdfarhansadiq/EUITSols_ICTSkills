<?php

namespace App\Http\Controllers\category;

use App\Http\Controllers\Controller;
use App\Models\CourseCategoryModel;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    //
    public function categoryPageView()
    {

        $data = CourseCategoryModel::all();

        return view('pages.category.category', compact('data'));
    }

    public function categoryCreate(Request $req)
    {
        $data = new CourseCategoryModel();

        $data->category_name = $req->input('categoryName');
        $data->category_description = $req->input('categoryDescription');

        $path = '';

        if ($req->hasFile('categoryImage')) {


            $file = $req->file('categoryImage');
            $filename = $file->getClientOriginalName();
            $folder = $data->category_name;
            $path = $req->file('categoryImage')->storeAs($folder, $filename, 'public');
        }
        $data->category_image = '/storage/'.$path;

        $data->save();

        $data1 = CourseCategoryModel::all();

        return response()->json($data1);

        //return redirect('/admin/category/view');
    }
}
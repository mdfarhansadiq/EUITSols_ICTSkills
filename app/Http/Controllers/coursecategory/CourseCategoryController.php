<?php

namespace App\Http\Controllers\coursecategory;

use App\Http\Controllers\Controller;
use App\Models\CourseCategoryModel;
use Illuminate\Http\Request;

class CourseCategoryController extends Controller
{
    //
    public function categoryPageView()
    {

        $data = CourseCategoryModel::all();

        return view('pages.coursecategory.coursecategory', compact('data'));
    }

    public function categoryCreate(Request $req)
    {

        // $this->validate($req, [
        //     'categoryName' => 'required|unique:coursecategories,category_name',
        //     'categoryDescription' => 'required',
        //     'categoryImage' => 'required'

        // ], [],
        // [
        //     'categoryName' => "Category Name",
        //     'categoryDescription' => 'Category Description',
        //     'categoryImage' => 'Category Image'
        // ]);

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

        // return redirect('/admin/category/view');
    }

    public function courseCategoryEditView($id)
    {
        $data = CourseCategoryModel::findOrFail($id);
        return view('pages.coursecategory.coursecategoryedit', compact('data'));
        //return response()->json($data);
    }

    public function courseCategoryEditUpdate(Request $req, $id)
    {
        $data = CourseCategoryModel::findOrFail($id);

        $data->category_name = $req->categoryName;
        $data->category_description = $req->categoryDescription;

        $path = '';

        if ($req->hasFile('categoryImage')) {


            $file = $req->file('categoryImage');
            $filename = $file->getClientOriginalName();
            $folder = $data->category_name;
            $path = $req->file('categoryImage')->storeAs($folder, $filename, 'public');
        }
        $data->category_image = '/storage/'.$path;

        $data->save();

        return redirect('/admin/category/view');
    }

    public function courseCategoryDelete($id)
    {
        CourseCategoryModel::where('id', $id)->delete();

        $data1 = CourseCategoryModel::all();

        return response()->json($data1);
    }
}
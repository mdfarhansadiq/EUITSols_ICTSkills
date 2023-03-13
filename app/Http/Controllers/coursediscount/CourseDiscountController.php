<?php

namespace App\Http\Controllers\coursediscount;

use App\Http\Controllers\Controller;
use App\Models\CoursesInfoModel;
use App\Models\CourseDiscountModel;
use Illuminate\Http\Request;

class CourseDiscountController extends Controller
{
    //
    public function courseDiscountPageView()
    {
        $data1 = CoursesInfoModel::all();
        $data2 = CourseDiscountModel::all();
        return view('pages.coursediscount.coursediscount', compact('data1' ,'data2'));
    }

    public function courseDiscountCreate(Request $req)
    {
        $data = new CourseDiscountModel();

        $data->course_title_id = $req->courseTitle;
        $data->course_discount_start = $req->courseDiscountStart;
        $data->course_discount_end = $req->courseDiscountEnd;
        $data->course_discount_amount = $req->courseDiscountAmount;
        $data->course_discount_percentage = $req->courseDiscountPercentage;
        $data->save();

        $data1 = CourseDiscountModel::all();

        return response()->json($data1);
        // return redirect('/admin/course-discount/view');
    }

    public function courseDiscountDelete($id)
    {
        CourseDiscountModel::where('id', $id)->delete();

        $data1 = CourseDiscountModel::all();

        return response()->json($data1);
    }

    public function courseDiscountEditView($id)
    {
        $data = CourseDiscountModel::findOrFail($id);
        $courseinfo = CoursesInfoModel::all();
        return view('pages.coursediscount.coursediscountedit', compact('data', 'courseinfo'));
    }


    public function courseDiscountEditUpdate(Request $req, $id)
    {
        $data = CourseDiscountModel::findOrFail($id);

        $data->course_title_id = $req->courseTitle;
        $data->course_discount_start = $req->courseDiscountStart;
        $data->course_discount_end = $req->courseDiscountEnd;
        $data->course_discount_amount = $req->courseDiscountAmount;
        $data->course_discount_percentage = $req->courseDiscountPercentage;
        $data->save();

        return redirect('/admin/course-discount/view');
    }
}
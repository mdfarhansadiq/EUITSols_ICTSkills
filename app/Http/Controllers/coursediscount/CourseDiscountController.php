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
        $data = CoursesInfoModel::all();
        return view('pages.coursediscount.coursediscount', compact('data'));
    }

    public function courseDiscountCreate(Request $req)
    {
        $data = new CourseDiscountModel();

        $data->course_title_id = $req->courseTitle;
        $data->course_discount_start = $req->courseDiscountStart;
        $data->course_discount_end = $req->courseDiscountEnd;
        $data->course_discount_amount = $req->courseDiscountAmount;

        $data->save();

        return redirect('/admin/course-discount/view');
    }
}
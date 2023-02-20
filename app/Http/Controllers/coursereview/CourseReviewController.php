<?php

namespace App\Http\Controllers\coursereview;

use App\Http\Controllers\Controller;
use App\Models\CoursesInfoModel;
use App\Models\CourseStudentModel;
use App\Models\CourseReviewModel;
use Illuminate\Http\Request;

class CourseReviewController extends Controller
{
    //
    public function courseReviewPageView()
    {
        $data1 = CoursesInfoModel::all();
        $data2 = CourseStudentModel::all();
        $data3 = CourseReviewModel::all();
        return view('pages.coursereview.coursereview', compact('data1', 'data2', 'data3'));
    }

    public function courseReviewCreate(Request $req)
    {
        $data = new CourseReviewModel();

        $data->course_title_id = $req->courseTitle;
        $data->course_student_id = $req->courseStudent;
        $data->course_review = $req->courseReview;

        $data->save();

        $data1 = CourseReviewModel::all();

        return response()->json($data1);
    }

}
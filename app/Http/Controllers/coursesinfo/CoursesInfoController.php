<?php

namespace App\Http\Controllers\coursesinfo;

use App\Http\Controllers\Controller;
use App\Models\CoursesInfoModel;
use App\Models\CourseCategoryModel;
use App\Models\CourseTeacherModel;
use Illuminate\Http\Request;

class CoursesInfoController extends Controller
{
    //
    public function coursesInfoPageView()
    {
        $data = CourseTeacherModel::all();
        return view('pages.coursesinfo.coursesinfo', compact('data'));
    }

    public function coursesInfoCreate(Request $req)
    {
        $data = new CoursesInfoModel();

        $data->course_title = $req->courseTitle;
        $data->course_teacher_id = $req->courseTeacher;
        $data->course_duration = $req->courseDuration;
        $data->course_description = $req->courseDescription;
        $data->course_image = $req->courseImage;

        $data->save();

        return redirect('/admin/courses-info/view');
    }
}
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
        $data1 = CourseTeacherModel::all();
        $data2 = CourseCategoryModel::all();
        $data3 = CoursesInfoModel::all();
        return view('pages.coursesinfo.coursesinfo', compact('data1', 'data2', 'data3'));
    }

    public function coursesInfoCreate(Request $req)
    {
        $data = new CoursesInfoModel();

        $data->course_title = $req->courseTitle;
        $data->course_category_id = $req->courseCategory;
        $data->course_teacher_id = $req->courseTeacher;
        $data->course_duration = $req->courseDuration;
        $data->course_description = $req->courseDescription;

        $path = '';

        if ($req->hasFile('courseImage')) {


            $file = $req->file('courseImage');
            $filename = $file->getClientOriginalName();
            $folder = $data->course_title;
            $path = $req->file('courseImage')->storeAs($folder, $filename, 'public');
        }
        $data->course_image = '/storage/'.$path;
        $data->course_fee = $req->courseFee;

        $data->save();

        return redirect('/admin/courses-info/view');
    }
}
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

        // $this->validate($req, [
        //     'courseTitle' => 'required|unique:coursesinfos,course_title',
        //     'courseCategory' => 'required',
        //     'courseTeacher' => 'required',
        //     'courseDuration' => 'required',
        //     'courseDescription' => 'required',
        //     'courseImage' => 'required',

        // ], [],
        // [
        //     'courseTitle' => 'Course Title',
        //     'courseCategory' => 'Course Category Name',
        //     'courseTeacher' => 'Course Teacher Name',
        //     'courseDuration' => 'Course Duration',
        //     'courseDescription' => 'Course Description',
        //     'courseImage' => 'Course Image',

        // ]);


        $data = new CoursesInfoModel();

        $data->course_title = $req->input('courseTitle');
        $data->course_category_id = $req->input('courseCategory');
        $data->course_teacher_id = $req->input('courseTeacher');
        $data->course_duration = $req->input('courseDuration');
        $data->course_description = $req->input('courseDescription');

        $path = '';

        if ($req->hasFile('courseImage')) {


            $file = $req->file('courseImage');
            $filename = $file->getClientOriginalName();
            $folder = $data->course_title;
            $path = $req->file('courseImage')->storeAs($folder, $filename, 'public');
        }
        $data->course_image = '/storage/' . $path;
        $data->course_fee = $req->input('courseFee');

        $data->save();

        $data1 = CoursesInfoModel::all();

        return response()->json($data1);

        // return redirect('/admin/courses-info/view');
    }

    public function coursesInfoDelete($id)
    {
        CoursesInfoModel::where('id', $id)->delete();

        $data1 = CoursesInfoModel::all();

        return response()->json($data1);
    }

    public function coursesInfoEditView($id)
    {
        $data = CoursesInfoModel::findOrFail($id);
        $coursecategory = CourseCategoryModel::all();
        $courseteacher = CourseTeacherModel::all();
        return view('pages.coursesinfo.coursesinfoedit', compact('data', 'coursecategory', 'courseteacher'));
    }


    public function courseInfoEditUpdate(Request $req, $id)
    {
        $data = CoursesInfoModel::findOrFail($id);

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
        $data->course_image = '/storage/' . $path;
        $data->course_fee = $req->courseFee;

        $data->save();

        return redirect('/admin/courses-info/view');
    }
}
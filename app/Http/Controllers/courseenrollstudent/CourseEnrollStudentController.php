<?php

namespace App\Http\Controllers\courseenrollstudent;

use App\Http\Controllers\Controller;
use App\Models\CoursesInfoModel;
use App\Models\CourseStudentModel;
use App\Models\CourseEnrollStudentModel;
use Illuminate\Http\Request;

class CourseEnrollStudentController extends Controller
{
    //
    public function courseEnrollStudentPageView()
    {
        $data1 = CoursesInfoModel::all();
        $data2 = CourseStudentModel::all();
        return view('pages.courseenrollstudent.courseenrollstudent', compact('data1', 'data2'));
    }

    public function courseEnrollStudentCreate(Request $req)
    {
        $data = new CourseEnrollStudentModel();

        $data->course_title_id = $req->courseTitle;
        $data->course_student_id = $req->courseEnrollStudent;
        $data->course_start_date = $req->courseStartDate;
        $data->course_completion_date = $req->courseCompletionDate;

        $data->save();

        return redirect('/admin/course-enroll-student/view');
    }
}
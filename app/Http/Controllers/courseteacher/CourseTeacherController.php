<?php

namespace App\Http\Controllers\courseteacher;

use App\Http\Controllers\Controller;
use App\Models\CourseTeacherModel;
use Illuminate\Http\Request;

class CourseTeacherController extends Controller
{
    //
    public function courseTeacherInfoPageView()
    {

        $data = CourseTeacherModel::all();
        return view('pages.courseteacher.courseteacher', compact('data'));
    }

    public function courseTeacherInfoCreate(Request $req)
    {
        $data = new CourseTeacherModel();

        $data->course_teacher_name = $req->courseTeacherName;
        $data->course_teacher_email = $req->courseTeacherEmail;
        $data->course_teacher_phone = $req->courseTeacherPhone;
        $data->course_teacher_dob = $req->courseTeacherDOB;
        $data->course_teacher_profession = $req->courseTeacherProfession;
        $data->course_teacher_company = $req->courseTeacherCompany;
        $data->course_teacher_interest_area = $req->courseTeacherInterestArea;
        $data->course_teacher_facebook = $req->courseTeacherFacebook;
        $data->course_teacher_linkedin = $req->courseTeacherLinkedIn;
        $data->course_teacher_github = $req->courseTeacherGitHub;
        $data->course_teacher_website = $req->courseTeacherWebSite;
        $data->course_teacher_address = $req->courseTeacherAddress;
        $data->course_teacher_description = $req->courseTeacherDescription;

        $path = '';

        if ($req->hasFile('courseTeacherPhoto')) {


            $file = $req->file('courseTeacherPhoto');
            $filename = $file->getClientOriginalName();
            $folder = $data->course_teacher_name;
            $path = $req->file('courseTeacherPhoto')->storeAs($folder, $filename, 'public');
        }
        $data->course_teacher_photo = '/storage/'.$path;

        $path = '';

        if ($req->hasFile('courseTeacherCV')) {


            $file = $req->file('courseTeacherCV');
            $filename = $file->getClientOriginalName();
            $folder = $data->category_name;
            $path = $req->file('courseTeacherCV')->storeAs($folder, $filename, 'public');
        }
        $data->course_teacher_cv = '/storage/'.$path;

        $data->save();

        return redirect('/admin/teacher-info/view');

    }
}
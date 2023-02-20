<?php

namespace App\Http\Controllers\coursestudent;

use App\Http\Controllers\Controller;
use App\Models\CoursesInfoModel;
use App\Models\CourseStudentModel;
use Illuminate\Http\Request;
use Illuminate\Queue\RedisQueue;

class CourseStudentController extends Controller
{
    //
    public function courseStudentInfoPageView()
    {
        $data = CourseStudentModel::all();
        return view('pages.coursestudent.coursestudent', compact('data'));
    }

    public function courseStudentInfoCreate(Request $req)
    {
        $data = new CourseStudentModel();

        $data->course_student_name = $req->courseStudentName;
        $data->course_student_email = $req->courseStudentEmail;
        $data->course_student_phone = $req->courseStudentPhone;
        $data->course_student_dob = $req->courseStudentDOB;
        $data->course_student_profession = $req->courseStudentProfession;
        $data->course_student_company_institute = $req->courseStudentCompany;
        $data->course_student_interest_area = $req->courseStudentInterestArea;
        $data->course_student_facebook = $req->courseStudentFacebook;
        $data->course_student_linkedin = $req->courseStudentLinkedIn;
        $data->course_student_github = $req->courseStudentGitHub;
        $data->course_student_website = $req->courseStudentWebSite;
        $data->course_student_address = $req->courseStudentAddress;
        $data->course_student_description = $req->courseStudentDescription;

        $path = '';

        if ($req->hasFile('courseStudentPhoto')) {


            $file = $req->file('courseStudentPhoto');
            $filename = $file->getClientOriginalName();
            $folder = $data->course_student_name;
            $path = $req->file('courseStudentPhoto')->storeAs($folder, $filename, 'public');
        }
        $data->course_student_photo = '/storage/'.$path;

        $data->save();

        $data1 = CourseStudentModel::all();

        return response()->json($data1);
    }
}
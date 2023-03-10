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

        // $this->validate($req, [
        //     'courseStudentName' => 'required',
        //     'courseStudentEmail' => 'required|unique:coursestudents,course_student_email',
        //     'courseStudentPhone' => 'required|unique:coursestudents,course_student_phone',
        //     'courseStudentDOB' => 'required',
        //     'courseStudentProfession' => 'required',
        //     'courseStudentCompany' => 'required',
        //     'courseStudentInterestArea' => 'required',
        //     'courseStudentFacebook' => 'required',
        //     'courseStudentLinkedIn' => 'required',
        //     'courseStudentGitHub' => 'required',
        //     'courseStudentWebSite' => 'required',
        //     'courseStudentAddress' => 'required',
        //     'courseStudentDescription' => 'required',
        //     'courseStudentPhoto' => 'required',

        // ], [],
        // [
        //     'courseStudentName' => 'Course Student Name',
        //     'courseStudentEmail' => 'Course Student Email ',
        //     'courseStudentPhone' => 'Course Student Phone',
        //     'courseStudentDOB' => 'Course Student DOB',
        //     'courseStudentProfession' => 'Course Student Profession',
        //     'courseStudentCompany' => 'Course Student Company/Institute',
        //     'courseStudentInterestArea' => 'Course Student InterestArea',
        //     'courseStudentFacebook' => 'Course Student Facebook',
        //     'courseStudentLinkedIn' => 'Course Student LinkedIn',
        //     'courseStudentGitHub' => 'Course Student GitHub',
        //     'courseStudentWebSite' => 'Course Student Website',
        //     'courseStudentAddress' => 'Course Student Address',
        //     'courseStudentDescription' => 'Course Student Description',
        //     'courseStudentPhoto' => 'Course Student Photo',

        // ]);

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

        // return redirect('/admin/student-info/view');
        $data1 = CourseStudentModel::all();

        return response()->json($data1);
    }

    public function courseStudentInfoEditView($id)
    {
        $data = CourseStudentModel::findOrFail($id);

        return view('pages.coursestudent.coursestudentedit', compact('data'));
    }

    public function courseStudentInfoEditUpdate(Request $req, $id)
    {
        $data = CourseStudentModel::findOrFail($id);

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

        return redirect('/admit/student-info/view');
    }


    public function courseStudentInfoDelete($id){
        CourseStudentModel::where('id', $id)->delete();

        $data1 = CourseStudentModel::all();

        return response()->json($data1);

    }
}
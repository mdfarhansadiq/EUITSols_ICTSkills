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

        // $this->validate($req, [
        //     'courseTeacherName' => 'required',
        //     'courseTeacherEmail' => 'required|unique:courseteachers,course_teacher_email',
        //     'courseTeacherPhone' => 'required|unique:courseteachers,course_teacher_phone',
        //     'courseTeacherDOB' => 'required',
        //     'courseTeacherProfession' => 'required',
        //     'courseTeacherCompany' => 'required',
        //     'courseTeacherInterestArea' => 'required',
        //     'courseTeacherFacebook' => 'required',
        //     'courseTeacherLinkedIn' => 'required',
        //     'courseTeacherGitHub' => 'required',
        //     'courseTeacherWebSite' => 'required',
        //     'courseTeacherAddress' => 'required',
        //     'courseTeacherDescription' => 'required',
        //     'courseTeacherPhoto' => 'required',
        //     'courseTeacherCV' => 'required'

        // ], [],
        // [
        //     'courseTeacherName' => 'Course Teacher Name',
        //     'courseTeacherEmail' => 'Course Teacher Email ',
        //     'courseTeacherPhone' => 'Course Teacher Phone',
        //     'courseTeacherDOB' => 'Course Teacher DOB',
        //     'courseTeacherProfession' => 'Course Teacher DOB',
        //     'courseTeacherCompany' => 'Course Teacher DOB',
        //     'courseTeacherInterestArea' => 'Course Teacher InterestArea',
        //     'courseTeacherFacebook' => 'Course Teacher Facebook',
        //     'courseTeacherLinkedIn' => 'Course Teacher LinkedIn',
        //     'courseTeacherGitHub' => 'Course Teacher GitHub',
        //     'courseTeacherWebSite' => 'Course Teacher Website',
        //     'courseTeacherAddress' => 'Course Teacher Address',
        //     'courseTeacherDescription' => 'Course Teacher Description',
        //     'courseTeacherPhoto' => 'Course Teacher Teacher',
        //     'courseTeacherCV' => 'Course Teacher CV'

        // ]);

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
            $folder = $data->course_teacher_name;
            $path = $req->file('courseTeacherCV')->storeAs($folder, $filename, 'public');
        }
        $data->course_teacher_cv = '/storage/'.$path;

        $data->save();

        // return redirect('/admin/teacher-info/view');

        $data1 = CourseTeacherModel::all();

        return response()->json($data1);
    }

    public function courseTeacherInfoEditView($id)
    {
        $data = CourseTeacherModel::findOrFail($id);

        return view('pages.courseteacher.courseteacheredit', compact('data'));
    }

    public function courseTeacherInfoEditUpdate(Request $req, $id)
    {
        $data = CourseTeacherModel::findOrFail($id);

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
            $folder = $data->course_teacher_name;
            $path = $req->file('courseTeacherCV')->storeAs($folder, $filename, 'public');
        }
        $data->course_teacher_cv = '/storage/'.$path;

        $data->save();

        return redirect('/admit/teacher-info/view');
    }


    public function courseTeacherInfoDelete($id){
        CourseTeacherModel::where('id', $id)->delete();

        $data1 = CourseTeacherModel::all();

        return response()->json($data1);

    }
}
<?php

namespace App\Http\Controllers\coursestudentcertificate;

use App\Http\Controllers\Controller;
use App\Models\CoursesInfoModel;
use App\Models\CourseEnrollStudentModel;
use Illuminate\Http\Request;

class CourseStudentCertificateController extends Controller
{
    //
    public function courseStudentCertificatePageView()
    {
        $data1 = CourseEnrollStudentModel::all();
        return view('pages.coursestudentcertificate.coursestudentcertificate', compact('data1'));
    }

    public function courseStudentCertificateCreate()
    {

    }
}
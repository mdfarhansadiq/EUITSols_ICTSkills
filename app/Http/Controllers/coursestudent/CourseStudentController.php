<?php

namespace App\Http\Controllers\coursestudent;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CourseStudentController extends Controller
{
    //
    public function courseStudentInfoPageView()
    {
        return view('pages.coursestudent.coursestudent');
    }
}
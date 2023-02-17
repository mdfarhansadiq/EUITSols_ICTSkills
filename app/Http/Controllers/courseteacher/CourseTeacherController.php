<?php

namespace App\Http\Controllers\courseteacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CourseTeacherController extends Controller
{
    //
    public function courseTeacherInfoPageView()
    {
        return view('pages.courseteacher.courseteacher');
    }
}
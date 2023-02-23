<?php

namespace App\Http\Controllers\coursestudentcompletion;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CourseStudentCompletionController extends Controller
{
    //
    public function courseStudentCompletionPageView()
    {
        return view('pages.coursestudentcompletion.coursestudentcompletion');
    }

    public function courseStudentCompletionCreate()
    {
        
    }
}
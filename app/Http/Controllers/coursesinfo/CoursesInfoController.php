<?php

namespace App\Http\Controllers\coursesinfo;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CoursesInfoController extends Controller
{
    //
    public function coursesInfoPageView()
    {
        return view('pages.coursesinfo.coursesinfo');
    }
}
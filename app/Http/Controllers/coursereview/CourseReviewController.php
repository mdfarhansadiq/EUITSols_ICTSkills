<?php

namespace App\Http\Controllers\coursereview;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CourseReviewController extends Controller
{
    //
    public function courseReviewPageView()
    {
        return view('pages.coursereview.coursereview');
    }
}
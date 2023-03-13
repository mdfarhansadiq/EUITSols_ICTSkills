<?php

namespace App\Http\Controllers\coursecontent;

use App\Http\Controllers\Controller;
use App\Models\CoursesInfoModel;
use App\Models\CourseContentModel;
use Illuminate\Http\Request;

class CourseContentController extends Controller
{
    //
    public function courseContentPageView()
    {
        $data1 = CoursesInfoModel::all();
        $data2 = CourseContentModel::all();
        return view('pages.coursecontent.coursecontent', compact('data1', 'data2'));
    }

    public function courseContentCreate(Request $req)
    {
        $data = new CourseContentModel();

        $data->course_title_id = $req->courseTitle;
        $data->course_content_title = $req->courseContentTitle;
        $data->course_content_link = $req->courseContentLink;
        $path = '';

        if ($req->hasFile('courseContentMaterialFile')) {


            $file = $req->file('courseContentMaterialFile');
            $filename = $file->getClientOriginalName();
            $folder = $data->course_content_title;
            $path = $req->file('courseContentMaterialFile')->storeAs($folder, $filename, 'public');
            $data->course_content_material_file = '/storage/' . $path;
        }
        $data->course_content_material_link = $req->courseContentMaterialLink;
        $data->course_content_duration = $req->courseContentDuration;

        $data->save();

        //return redirect('/admin/course-content/view');
        $data1 = CourseContentModel::all();
        return response()->json($data1);
    }

    public function courseContentEditView($id)
    {
        $data = CourseContentModel::findOrFail($id);
        $course = CoursesInfoModel::all();
        return view('pages.coursecontent.coursecontentedit', compact('data', 'course'));
    }

    public function courseContentEditUpdate(Request $req, $id)
    {
        $data = CourseContentModel::findOrFail($id);

        $data->course_title_id = $req->courseTitle;
        $data->course_content_title = $req->courseContentTitle;
        $data->course_content_link = $req->courseContentLink;
        $path = '';

        if ($req->hasFile('courseContentMaterialFile')) {


            $file = $req->file('courseContentMaterialFile');
            $filename = $file->getClientOriginalName();
            $folder = $data->course_content_title;
            $path = $req->file('courseContentMaterialFile')->storeAs($folder, $filename, 'public');
            $data->course_content_material_file = '/storage/' . $path;
        }
        $data->course_content_material_link = $req->courseContentMaterialLink;
        $data->course_content_duration = $req->courseContentDuration;


        $data->save();

        return redirect('/admin/course-content/view');
    }

    public function courseContentDelete($id)
    {
        CourseContentModel::where('id', $id)->delete();

        $data1 = CourseContentModel::all();

        return response()->json($data1);
    }

    // public function courseContentComplete($id)
    // {
    //     $data = CourseContentModel::findOrFail($id);
    //     dd($data);
    //     $data->course_content_complete = 1;

    //     $data->save();

    //     return redirect()->back();

    //     // $data1 = CourseContentModel::all();

    //     // return response()->json($data1);
    // }
}
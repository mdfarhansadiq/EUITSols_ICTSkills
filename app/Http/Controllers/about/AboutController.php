<?php

namespace App\Http\Controllers\about;

use App\Http\Controllers\Controller;
use App\Models\AboutModel;
use App\Models\CSRModel;
use App\Models\FAQModel;
use App\Models\AssignedModel;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class AboutController extends Controller
{
    public function about()
    {
        // return 1;
        $data  = AboutModel::all();
        // dd($data);

        return view('pages.about.about', compact('data'));
        // return View::make('pages.about.index1');
    }
    public function aboutAjaxShow(){
        $data  = AboutModel::all();
        echo count($data);
    }

    public function aboutPost(Request $req)
    {
        // dd("hello");
        // $validated = $req->validate(
        //     [
        //         'title' => 'required|unique:abouts,title|max:255',
        //         'description' => 'required|string',
        //     ],
        //     [],
        //     [
        //         "title" => "Title",
        //         "description" => "Description"
        //     ]
        // );

        
        
        $data = new AboutModel();
        $data->title = $req->input('title');
        $data->details = $req->input('description');

        $path = '';
        if ($req->hasFile('image')) {


            $file = $req->file('image');
            $filename = $file->getClientOriginalName();
            $folder = $data->title;
            $path = $req->file('image')->storeAs($folder, $filename, 'public');
        }
        $data->img = '/storage/'.$path;
        $data->visionmission = $req->input('visionmission');
        //dd($data);
        
        $data->save();

        $data1 = AboutModel::get();
        // return view('pages.about.index', compact('data'));
        return response()->json($data1);

        //return redirect('/about/about');

    }



    public function csr()
    {
        $data  = CSRModel::all();
        return view('pages.about.csractivities', compact('data'));
    }

    public function csrPost(Request $req)
    {
        $data = new CSRModel();
        $data->title = $req->input('title');
        $data->actidetails = $req->input('actidetails');

        $path = '';
        if ($req->hasFile('headerimg')) {

            $file = $req->file('headerimg');
            $filename = $file->getClientOriginalName();
            $folder = $data->title;
            $path = $req->file('headerimg')->storeAs($folder, $filename, 'public');

            // $file = $req->file('headerimg');
            // $filename = $file->getClientOriginalName();
            // $folder = 'public/' . $data->title;
            // $file->storeAs($folder, $filename);
            // $path = $folder . "/" . $filename;
        }
        $data->headerimg = '/storage/'.$path;

        $path = '';
        if ($req->hasFile('descriimg')) {

            $file = $req->file('descriimg');
            $filename = $file->getClientOriginalName();
            $folder = $data->title;
            $path = $req->file('descriimg')->storeAs($folder, $filename, 'public');
        }
        $data->descriimg = '/storage/'.$path;

        $data->save();

        $data1 = CSRModel::all();
        return response()->json($data1);
    }


    public function faq()
    {
        $data = FAQModel::all();
        return view('pages.about.faq', compact('data'));

    }


    public function faqPost(Request $req)
    {
        $data = new FAQModel();
        $data->title = $req->input('title');
        $data->question = $req->input('question');
        $data->answer = $req->input('answer');

        $data->save();

        // return redirect('/about/faq');
        $data1 = FAQModel::all();
        return response()->json($data1);
    }


    public function assigned()
    {
        $data = AssignedModel::all();
        return view('pages.about.assigned', compact('data'));

    }

    public function assignedPost(Request $req)
    {
        $data = new AssignedModel();
        $data->title = $req->input('title');
        $data->section = $req->input('section');
        $data->contact = $req->input('contact');

        $data->save();

        $data1 = AssignedModel::all();
        return response()->json($data1);

        //return redirect('/about/assigned-officer-list');
    }
}
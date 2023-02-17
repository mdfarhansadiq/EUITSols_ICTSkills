<?php

namespace App\Http\Controllers\eligibility;
use App\Http\Controllers\Controller;
use App\Models\EligibilityModel;

use Illuminate\Http\Request;

class EligibilityController extends Controller
{
    public function eligibility()
    {
        $data = EligibilityModel::all();
        return view('pages.eligibility.eligibility', compact('data'));
    }

    public function eligibilityPost(Request $req)
    {
        $data = new EligibilityModel();

        $data->eligibility = $req->input('eligibility');

        $path = '';
        if ($req->hasFile('eligibimage')) {


            $file = $req->file('eligibimage');
            $filename = $file->getClientOriginalName();
            // $folder = $data->name;
            $path = $req->file('eligibimage')->storeAs('Eligibimage', $filename, 'public');
        }
        $data->eligibimage = '/storage/'.$path;
        $data->save();

        $data1 = EligibilityModel::all();

        return response()->json($data1);

        //return redirect('/eligibility');
    }
}
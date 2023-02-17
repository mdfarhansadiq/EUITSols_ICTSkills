<?php

namespace App\Http\Controllers\nationalaward;
use App\Http\Controllers\Controller;
use App\Models\NationalAwardModel;
use App\Models\Nationality;
use Illuminate\Http\Request;

class NationalAwardController extends Controller
{
    public function nationalAward()
    {
        $data = NationalAwardModel::all();
        return view('pages.nationalaward.nationalaward', compact('data'));
    }


    public function nationalAwardPost(Request $req)
    {
        $data = new NationalAwardModel();



        $path = '';
        if ($req->hasFile('ntlawrdimg')) {


            $file = $req->file('ntlawrdimg');
            $filename = $file->getClientOriginalName();
            // $folder = $data->name;
            $path = $req->file('ntlawrdimg')->storeAs('Eligibimage', $filename, 'public');
        }
        $data->ntlawrdimg = '/storage/'.$path;
        $data->save();

        // $path = '';
        // if ($req->hasFile('ntlawrdimg')) {


        //     $file = $req->file('ntlawrdimg');
        //     $filename = $file->getClientOriginalName();
        //     // $folder = $data->name;
        //     $path = $req->file('ntlawrdimg')->storeAs('NationalAwardImage', $filename, 'public');
        // }
        // $data->ntlawrdimg = '/storage/'.$path;

        // $data->save();

        $data1 = NationalAwardModel::all();
        return response()->json($data1);
    }
}
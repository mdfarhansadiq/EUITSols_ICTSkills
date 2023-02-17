<?php

namespace App\Http\Controllers\codeconduct;
use App\Http\Controllers\Controller;
use App\Models\CodeConductModel;

use Illuminate\Http\Request;

class CodeConductController extends Controller
{
    public function codeConduct()
    {
        $data = CodeConductModel::all();
        return view('pages.codeconduct.codeconduct', compact('data'));
    }

    public function codeConductPost(Request $req)
    {
        $data = new CodeConductModel();

        $data->codeofprointro = $req->input('codeofprointro');
        $data->setoutbiscode = $req->input('setoutbiscode');
        $data->codeofpro = $req->input('codeofpro');
        $data->inpartims = $req->input('inpartims');

        $path = '';
        if ($req->hasFile('codeofconductimg')) {


            $file = $req->file('codeofconductimg');
            $filename = $file->getClientOriginalName();
            // $folder = $data->name;
            $path = $req->file('codeofconductimg')->storeAs('CodeConductImage', $filename, 'public');
        }
        $data->codeofconductimg = '/storage/'.$path;
        $data->save();

        $data1 = CodeConductModel::all();


        return response()->json($data1);

    }
}
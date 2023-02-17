<?php

namespace App\Http\Controllers\service;
use App\Http\Controllers\Controller;
use App\Models\ServicesModel;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function service()
    {
        $data = ServicesModel::all();

        return view('pages.services.services', compact('data'));
    }

    public function servicePost(Request $req)
    {
        $data = new ServicesModel();
        $data->icsbservetitle = $req->input('icsbservetitle');
        $data->icsbservedescri = $req->input('icsbservedescri');

        $path = '';
        if ($req->hasFile('serveimg')) {


            $file = $req->file('serveimg');
            $filename = $file->getClientOriginalName();
            $folder = $data->icsbservetitle;
            $path = $req->file('serveimg')->storeAs($folder, $filename, 'public');
        }
        $data->serveimg = '/storage/'.$path;

        $data->save();

        $data1 = ServicesModel::all();

        return response()->json($data1);

        //return redirect('/services');
    }

}
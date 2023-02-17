<?php

namespace App\Http\Controllers\icsbpresident;
use App\Http\Controllers\Controller;
use App\Models\ICSBPresidentModule;

use Illuminate\Http\Request;

class ICSBPresidentController extends Controller
{
    public function icsbPresident()
    {
        $data = ICSBPresidentModule::all();
        return view('pages.icsbpresident.icsbpresident', compact('data'));
    }

    public function icsbPresidentPost(Request $req)
    {
        $data = new ICSBPresidentModule();
        $data->name = $req->input('name');
        $data->presidescription = $req->input('presidescription');

        $path = '';
        if ($req->hasFile('image')) {


            $file = $req->file('image');
            $filename = $file->getClientOriginalName();
            $folder = $data->name;
            $path = $req->file('image')->storeAs($folder, $filename, 'public');
        }
        $data->image = '/storage/'.$path;

        $data->save();

        $data1 = ICSBPresidentModule::all();

        return response()->json($data1);
        // return redirect('/icsb-president');
    }
}
<?php

namespace App\Http\Controllers\missionvision;
use App\Http\Controllers\Controller;
use App\Models\MissionModel;
use App\Models\VisionModel;

use Illuminate\Http\Request;

class MissionVisionController extends Controller
{
    public function missionVision()
    {
        $mdata = MissionModel::all();
        $vdata = VisionModel::all();
        return view('pages.missionvision.missionvision', compact('mdata', 'vdata'));
    }

    public function missionVisionPost(Request $req)
    {
        $mdata = new MissionModel();
        $vdata = new VisionModel();

        $mdata->icsbmission = $req->input('icsbmission');
        $vdata->icsbvision = $req->input('icsbvision');
        $vdata->icsbmvlink = $req->input('icsbmvlink');

        $mdata->save();

        $vdata->save();

        return redirect('/mission-vision');

    }
}
<?php

namespace App\Http\Controllers\recentvideos;
use App\Http\Controllers\Controller;
use App\Models\RecentVideosModel;

use Illuminate\Http\Request;

class RecentVideosController extends Controller
{
    public function recentVideos()
    {
        $data = RecentVideosModel::all();
        return view('pages.recentvideos.recentvideos', compact('data'));
    }

    public function recentVideosPost(Request $req)
    {
        $data = new RecentVideosModel();

        $data->videotitle = $req->input('videotitle');
        $data->vidlink = $req->input('vidlink');

        $data->save();

        $data1 = RecentVideosModel::all();

        return response()->json($data1);
    }
}
<?php

namespace App\Http\Controllers\noticeboard;
use App\Http\Controllers\Controller;
use App\Models\NoticeBoardModel;

use Illuminate\Http\Request;
use Illuminate\Notifications\Notification;
use PHPUnit\Framework\Error\Notice;

class NoticeController extends Controller
{
    public function notice()
    {
        $data = NoticeBoardModel::all();
        return view('pages.noticeboard.noticeboard', compact('data'));
    }

    public function noticePost(Request $req)
    {
        $data = new NoticeBoardModel();
        $data->notice = $req->input('notice');

        $data->save();

        $data1 = NoticeBoardModel::all();

        return response()->json($data1);
    }
}
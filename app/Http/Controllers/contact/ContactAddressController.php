<?php

namespace App\Http\Controllers\contact;
use App\Http\Controllers\Controller;
use App\Models\ContactAddressModel;

use Illuminate\Http\Request;

class ContactAddressController extends Controller
{
    public function contactAddress()
    {
        $data = ContactAddressModel::all();

        return view('pages.contact.contact', compact('data'));
    }

    public function contactAjaxShow(){
        $data  = ContactAddressModel::all();
        echo count($data);
    }

    public function contactAddressPost(Request $req)
    {
        $data = new ContactAddressModel();

        $data->email = $req->input('email');
        $data->phone = $req->input('phone');
        $data->telephone = $req->input('telephone');
        $data->fax = $req->input('fax');
        $data->address = $req->input('address');

        $data->save();

        $data1 = ContactAddressModel::all();
        return response()->json($data1);
    }
}
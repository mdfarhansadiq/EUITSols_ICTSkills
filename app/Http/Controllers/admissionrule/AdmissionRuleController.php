<?php

namespace App\Http\Controllers\admissionrule;
use App\Http\Controllers\Controller;
use App\Models\AdmissionRuleModel;
use Illuminate\Http\Request;
use InfyOm\AdminLTEPreset\AdminLTEPreset;

class AdmissionRuleController extends Controller
{
    public function admissionRule()
    {
        $data = AdmissionRuleModel::all();
        return view('pages.admissionrule.admissionrule', compact('data'));
    }

    public function admissionRulePost(Request $req)
    {
        $data = new AdmissionRuleModel();

        $data->studentregisproce = $req->input('studentregisproce');
        $data->modepaymentfees = $req->input('modepaymentfees');
        $data->dateofregis = $req->input('dateofregis');
        $data->refundfees = $req->input('refundfees');
        $path = '';
        if ($req->hasFile('admisnruleimg')) {


            $file = $req->file('admisnruleimg');
            $filename = $file->getClientOriginalName();
            // $folder = $data->name;
            $path = $req->file('admisnruleimg')->storeAs('AdmissionRuleImage', $filename, 'public');
        }
        $data->admisnruleimg = '/storage/'.$path;

        $data->save();

        // return redirect('/admission-rule');
        $data1 = AdmissionRuleModel::all();
        return response()->json($data1);
    }
}
@extends('layouts.app')

@section('title', 'Courses Content')

@push('third_party_stylesheets')
@endpush

@push('page_css')
@endpush



@section('content')
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-12">
                <div id="alertError1" class="alert alert-danger" role="alert" style="display:none";>
                    Please fill the all required field
                </div>
                <div id="alertError1" class="alert alert-danger" role="alert" style="display:none";>
                    Something Went Wrong
                </div>
                <div id="alertSuccess" class="alert alert-success" role="alert" style="display:none";>
                    Data Insert Successfully Done
                </div>
                <div class="card">
                    <div class="card-header">
                        <span class="float-left">
                            <h4>Add Course Content</h4>
                        </span>
                        {{-- <span class="float-right">
                        @if (Auth::user()->can('user view') || Auth::user()->role->id == 1)<a href="{{ route('users.index') }}" class="btn btn-info">Back</a>@endif
                    </span> --}}
                    </div>
                    <div class="card-body">
                        <div class="row">
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <div class="col-md-10 m-auto">
                                <form action="{{ url('/admin/teacher-info/update', $data['id']) }}" method="POST"
                                    class="form-horizontal" enctype="multipart/form-data" id="about_form">
                                    @csrf
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherName">Name<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherName"
                                                name="courseTeacherName" placeholder="Enter Course Teacher Name" value="{{ $data->course_teacher_name }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherEmail">Email<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" id="courseTeacherEmail"
                                                name="courseTeacherEmail" placeholder="Enter Course Teacher Email" value="{{ $data->course_teacher_email }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherPhone">Phone<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="tel" class="form-control" id="courseTeacherPhone"
                                                name="courseTeacherPhone" placeholder="Enter Course Teacher Phone" value="{{ $data->course_teacher_phone }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherDOB">Date Of Birth<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control" id="courseTeacherDOB"
                                                name="courseTeacherDOB" placeholder="Enter Course Teacher Phone" value="{{ $data->course_teacher_dob }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherProfession">Profession<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherProfession"
                                                name="courseTeacherProfession" placeholder="Enter Profession" value="{{ $data->course_teacher_profession }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherCompany">Company<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherCompany"
                                                name="courseTeacherCompany" placeholder="Enter Company Name" value="{{ $data->course_teacher_company }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherInterestArea">Interest Area<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherInterestArea"
                                                name="courseTeacherInterestArea" placeholder="Enter Interest Area" value="{{ $data->course_teacher_interest_area }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherFacebook">Facebook URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseTeacherFacebook" name="courseTeacherFacebook"
                                                placeholder="Enter Facebook" rows="17" cols="70">{{ $data->course_teacher_facebook }}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherLinkedIn">LinkedIn URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseTeacherLinkedIn" name="courseTeacherLinkedIn"
                                                placeholder="Enter LinkedIn" rows="17" cols="70">{{ $data->course_teacher_linkedin }}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherGitHub">GitHub URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseTeacherGitHub" name="courseTeacherGitHub"
                                                placeholder="Enter GitHub" rows="17" cols="70">{{ $data->course_teacher_github }}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherWebSite">WebSite URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseTeacherWebSite" name="courseTeacherWebSite"
                                                placeholder="Enter WebSite" rows="17" cols="70">{{ $data->course_teacher_website }}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherAddress">Address<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherAddress"
                                                name="courseTeacherAddress" placeholder="Enter Address" value="{{ $data->course_teacher_address }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherDescription">Description<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseTeacherDescription" placeholder="Write Your Post"
                                                name="courseTeacherDescription" rows="17" cols="70">{{ $data->course_teacher_description }}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="about-photo">Photo: <span class="text-danger">*</span>
                                        </label>
                                        <div class="col-md-9 offset-md-3">
                                            <input type="file" name="courseTeacherPhoto" id="courseTeacherPhoto"
                                                class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="about-cv">CV: <span class="text-danger">*</span>
                                        </label>
                                        <div class="col-md-9 offset-md-3">
                                            <input type="file" name="courseTeacherCV" id="courseTeacherCV"
                                                class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-3" for="guard_name"></label>
                                        <div class="col-sm-9">
                                            <button id="about_btn" type="submit"
                                                class="btn btn-primary w-100">Post</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{-- <div class="col-md-10 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <span class="float-left">
                            <h4>View Course Content</h4>
                        </span>
                    </div>
                    <div class="card-body">
                        @include('partial.flush-message')

                        <div class="table table-responsive">
                            <table id="table" class="about_table">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Course Title</th>
                                        <th>Lecture Video</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                @foreach ($data2 as $key => $d)
                                    <a href="{{ $d->course_content_link }}" id="{{ $key }}"></a>
                                @endforeach
                                <tbody id="showPost">
                                    @foreach ($data2 as $key => $d)
                                        <tr>
                                            <td>
                                                <h5 id="keyVal">{{ $key + 1 }}</h5>
                                            </td>

                                            <td>
                                                <h5>{{ $d->course_content_title }}</h5>
                                            </td>

                                            <td>
                                                <div id="player{{ $key }}"></div>
                                            </td>

                                            <td><a href="javascript:void(0);" class="delete"
                                                data-id="{{ $d->id }}">Delete</a></td>

                                        </tr>
                                    @endforeach
                                </tbody>

                            </table>
                        </div>

                    </div>
                </div>
            </div> --}}
        </div>
    </div>
@endsection

@push('third_party_scripts')
    <script src="{{ asset('assets/js/DataTable/datatables.min.js') }}"></script>
@endpush

@push('page_scripts')
    <script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
    {{-- <script type="text/javascript">
        $(document).ready(function() {


            // $('.btnView').click( function(){
            //     if($(this).data('id') != null || $(this).data('id') != ''){
            //         let url = ("{{ url('/admin/teacher-info/view/', ['id']) }}");
            //         let _url = url.replace('id', $(this).data('id'));
            //         $.ajax({
            //             url: _url,
            //             method: "GET",
            //             success: function (response) {
            //                 $('#view-name').html(response.courseTeacherName);
            //                 $('#view-email').html(response.courseTeacherEmail);
            //                 $('#view-photo').html(response.courseTeacherPhoto);
            //                 // $('#view-createdAt').html(response.created_at ? new Date(response.created_at) : '');
            //                 // $('#view-createdBy').html(response.created_user ? response.created_user.name : 'system');
            //                 // $('#view-updatedAt').html(response.updated_at ? new Date(response.updated_at) : '');
            //                 // $('#view-updatedBy').html(response.updated_user ? response.updated_user.name: '');
            //                 $('#view-modal').modal('show');
            //             }
            //         });
            //     }else{
            //         alart('Something went wrong');
            //     }
            // });

        });
    </script> --}}
    {{-- <script>
    function reqrChk()
    {

    }
    reqrChk();
</script> --}}

    {{-- <script>

function postDisable()
{
    var chk = 0;
    chk = document.getElementById("keyVal").textContent;
    if(chk)
    {
        document.getElementById("title").disabled = true;
        document.getElementById("description").disabled = true;
        document.getElementById("image").disabled = true;
        document.getElementById("about_btn").disabled = true;
        document.getElementById("visionmission").disabled = true;
        //$("#formID").children().prop('disabled',true);
    }
}
postDisable();


</script> --}}

    {{-- <script src="http://www.youtube.com/player_api"></script> --}}

    <script>
        // create youtube player
    </script>

    {{-- <script src="http://www.youtube.com/player_api"></script>

    <script>
        // create youtube player
        var player;

        var completeVid = 0;
        function onYouTubePlayerAPIReady() {

            var allId = document.getElementById("{{ $key }}").id;



            for (var i = 0; i <= (parseInt(allId)); i++) {

                var ID = i.toString();
                var videoURL = document.getElementById(ID).href;
                var ytV = '';
                var ytVid = '';
                var cnt = 0;


                /// Video ID get
                for(var j = videoURL.length - 1; j >= 0; j--)
                {
                    if(cnt !== 11)
                    {
                        ytV += videoURL[j];
                        cnt++;
                    }
                }


                /// Video ID reverse
                for(var j = ytV.length - 1; j >= 0; j--)
                {
                    ytVid += ytV[j];
                }


                var plr = 'player' + i;

                player = new YT.Player(plr, {
                    height: '370',
                    width: '750',
                    videoId: ytVid,
                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });

            }
        }

        // autoplay video off
        function onPlayerReady(event) {
            event.target.pauseVideo();
        }

        // when video ends
        function onPlayerStateChange(event) {
            if (event.data === 0) {
                completeVid++;
            }
        }

    </script> --}}

    <script type="text/javascript">

    </script>
@endpush

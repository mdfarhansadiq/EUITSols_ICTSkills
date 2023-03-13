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
                                <form action="/admin/course-content/update/{{ $data['id'] }}" method="POST"
                                    class="form-horizontal" enctype="multipart/form-data" id="about_form">
                                    @csrf
                                    {{-- <div class="form-group row">
                                        <label class="col-sm-3" for="courseTitle">Title<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTitle" name="courseTitle"
                                                placeholder="Enter Course Title">
                                        </div>
                                    </div> --}}
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTitle">Course Title<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <select class="form-control" aria-label="Default select example"
                                                name="courseTitle" id="courseTitle">
                                                <option selected value="">Select Course Title</option>
                                                @foreach ($course as $d)
                                                    <option value="{{ $d->id }}" @if ($d->id == $data->course_title_id) selected @endif>{{ $d->course_title }}</option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseContentTitle">Content Title<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseContentTitle"
                                                name="courseContentTitle" placeholder="Enter Course Content Title" value="{{ $data->course_content_title }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseContentLink">Course Content<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="url" class="form-control" id="courseContentLink"
                                                name="courseContentLink" placeholder="Enter Content URL" value="{{ $data->course_content_link }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="about-photo">Content Material File: <span class="text-danger">*</span>
                                        </label>
                                        <div class="col-md-9 offset-md-3">
                                            <input type="file" name="courseContentMaterialFile"
                                                id="courseContentMaterialFile" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseContentMaterialLink">Content Material Link<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="url" class="form-control" id="courseContentMaterialLink"
                                                name="courseContentMaterialLink" placeholder="Enter Content Material Link" value="{{ $data->course_content_material_link }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseContentDuration">Content Duration<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseContentDuration"
                                                name="courseContentDuration" placeholder="Enter Content Duration" value="{{ $data->course_content_duration }}">
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
    <script>

    </script>


    {{-- ******* Youtube Player API Code - Start ******* --}}
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

    {{-- ******* End ******* --}}


<script type="text/javascript">
    $(document).ready(function() {
        // $("#about_form").submit(function(e) {
        //     e.preventDefault()
        //     // var data1 = CKEDITOR.instances.courseTeacherFacebook.getData();
        //     // var data2 = CKEDITOR.instances.courseTeacherLinkedIn.getData();
        //     // var data3 = CKEDITOR.instances.courseTeacherGitHub.getData();
        //     // var data4 = CKEDITOR.instances.courseTeacherWebSite.getData();
        //     // var data5 = CKEDITOR.instances.courseTeacherDescription.getData();

        //     for (instance in CKEDITOR.instances) {
        //         CKEDITOR.instances[instance].updateElement();
        //     }

        //     var formData = new FormData(this);
        //     length_array = [formData.get('courseTitle').length, formData.get('courseCategory').length,
        //         formData.get('courseTeacher').length
        //     ]
        //     count = 0
        //     for (i = 0; i < length_array.length; i = i + 1) {
        //         if (length_array[i] == 0) {

        //             count = 0
        //             break;
        //         } else {
        //             count = 1

        //         }

        //     }
        //     if (count == 0) {
        //         $('#alertError1').fadeIn()
        //         $("#alertError1").fadeOut(10000);
        //     } else {
        //         $.ajax({
        //             url: '/admin/courses-info/create',
        //             type: "post",
        //             headers: {
        //                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //             },
        //             data: formData,
        //             cache: false,
        //             contentType: false,
        //             processData: false,
        //             success: function(response) {
        //                 $('#alertSuccess').fadeIn()
        //                 $("#alertSuccess").fadeOut(5000);
        //                 var student = '';
        //                 // ITERATING THROUGH OBJECTS
        //                 $.each(response, function(key, value) {
        //                     //CONSTRUCTION OF ROWS HAVING
        //                     // DATA FROM JSON OBJECT
        //                     student = '<tbody id="showPost">';
        //                     student += '<tr>';
        //                     student += '<td>' +
        //                         response.length + '</td>';

        //                     student += '<td>' +
        //                         value.courseTitle + '</td>';

        //                     student += '<td>' +
        //                         value.courseCategory + '</td>';

        //                     student += '<td>' +
        //                         value.courseTeacher + '</td>';

        //                     // student += '<td><a href="{{ asset($d->course_teacher_photo) }}" target="_blank">Teacher Photo</a>'
        //                     //     '</td>';

        //                     // student += '<td><a href="{{ asset($d->course_teacher_cv) }}" target="_blank">Teacher CV</a>'
        //                     //     '</td>';

        //                     // student += '<td>' +
        //                     //     value.Articles + '</td>';

        //                     // student+='<td class="text-middle py-0 align-middle"><div class="btn-group"><a href="javascript:void(0)" class="btn btn-info btnView" data-id="'+value.id+'"><i class="fas fa-eye"></i></a><a href="" class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a><a href="" class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a></div></td>'

        //                     student += '</tr>';
        //                     student += '</tbody>'
        //                 });
        //                 table_head =
        //                     '<th>SL</th><th>Title</th><th>Category</th><th>Teacher</th>'

        //                 $(".about_table thead tr th:lt(5)").remove();
        //                 $('.about_table thead tr').append(table_head)
        //                 $('.about_table').append(student);
        //                 // showJobs(response);

        //             },
        //             error: function(error) {
        //                 $('#alertError').fadeIn()
        //                 $("#alertError").fadeOut(5000);
        //             },
        //         });
        //     }

        //     return false;

        // });

        // $(".delete").on("click", function() {
        //     var id = $(this).attr("data-id");
        //     $.ajax({
        //         url: "/admin/courses-info/delete/" + id,
        //         data: {
        //             "id": id,
        //             "_token": "{{ csrf_token() }}"
        //         },
        //         type: 'post',
        //         success: function(result) {
        //             console.log("Yes");
        //         }
        //     });
        // });

    });
</script>
@endpush

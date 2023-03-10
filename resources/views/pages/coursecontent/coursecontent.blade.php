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
                                <form action="{{ url('/admin/course-content/create') }}" method="POST"
                                    class="form-horizontal" enctype="multipart/form-data" id="about_form">
                                    @csrf

                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTitle">Course Title<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <select class="form-control" aria-label="Default select example"
                                                name="courseTitle" id="courseTitle">
                                                <option selected value="">Select Course Title</option>
                                                @foreach ($data1 as $d)
                                                    <option value="{{ $d->id }}">{{ $d->course_title }}
                                                    </option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseContentTitle">Content Title<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseContentTitle"
                                                name="courseContentTitle" placeholder="Enter Course Content Title">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseContentLink">Course Content<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="url" class="form-control" id="courseContentLink"
                                                name="courseContentLink" placeholder="Enter Content URL">
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
                                                name="courseContentMaterialLink" placeholder="Enter Content Material Link">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseContentDuration">Content Duration<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseContentDuration"
                                                name="courseContentDuration" placeholder="Enter Content Duration">
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

            <div class="col-md-10 col-lg-12">
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
                                        <tr id="tableData{{ $key }}">
                                            <div>
                                                <td>
                                                    <h5 id="keyVal">{{ $key + 1 }}</h5>
                                                </td>

                                                <td>
                                                    <h5>{{ $d->course_content_title }}</h5>
                                                </td>

                                                <td>
                                                    <div><video id="vid{{ $key }}" controls height="300"
                                                            width="700" controlsList="nodownload" src="">
                                                        </video></div>
                                                </td>

                                                <td>
                                                    <button class="btn btn-success" onclick="vidEnd(this.id)"
                                                        id="btnLecture{{ $key }}">Complete
                                                        Lecture</button>
                                                </td>

                                                <td><a href="{{ url('/admin/courses-content/edit/view', $d['id']) }}"
                                                        class="edit btn btn-primary"
                                                        data-id="{{ $d->id }}">Edit</a></td>

                                                <td><a href="javascript:void(0);" class="delete btn btn-danger"
                                                        type="button" data-id="{{ $d->id }}">Delete</a>
                                                </td>

                                            </div>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection

@push('third_party_scripts')
    <script src="{{ asset('assets/js/DataTable/datatables.min.js') }}"></script>
@endpush

@push('page_scripts')
    <script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#about_form").submit(function(e) {
                e.preventDefault()

                var formData = new FormData(this);
                length_array = [formData.get('courseTitle').length, formData.get('courseContent').length,

                ]
                count = 0
                for (i = 0; i < length_array.length; i = i + 1) {
                    if (length_array[i] == 0) {

                        count = 0
                        break;
                    } else {
                        count = 1

                    }

                }
                if (count == 0) {
                    $('#alertError1').fadeIn()
                    $("#alertError1").fadeOut(10000);
                } else {
                    $.ajax({
                        url: '/admin/course-content/create',
                        type: "post",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        data: formData,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function(response) {
                            $('#alertSuccess').fadeIn()
                            $("#alertSuccess").fadeOut(5000);
                            var student = '';
                            // ITERATING THROUGH OBJECTS
                            $.each(response, function(key, value) {
                                //CONSTRUCTION OF ROWS HAVING
                                // DATA FROM JSON OBJECT
                                student += '<tr>';
                                student += '<td>' +
                                    response.length + '</td>';

                                student += '<td>' +
                                    response[key]["id"] + '</td>';

                                student += '<td>' +
                                    response[key]["course_title"] + '</td>';

                                student += '<td>' +
                                    response[key]["course_content_title"] + '</td>';


                                student += '</tr>';

                            });


                            $('#showPost').append(student);
                            // showJobs(response);

                        },
                        error: function(error) {
                            $('#alertError').fadeIn()
                            $("#alertError").fadeOut(5000);
                        },
                    });
                }

                return false;

            });

        });
    </script>

    {{-- <script>




</script> --}}


    <script>
        // create youtube player
    </script>

    {{-- <script src="http://www.youtube.com/player_api"></script> --}}



    {{-- <script>
        /// Dynamic video link to set video-src

        var vidLinkID = document.getElementById("{{ $key }}").id

        //console.log(vidLinkID);
        for (var i = 0; i <= vidLinkID.length; i++) {
            var ID = i.toString();

            var Href = document.getElementById(ID).href;
            var strID = '';

            for (var j = 26; j < Href.length; j++) {
                if (Href[j] === '?') {
                    break;
                } else {
                    strID += Href[j];
                }
            }
            var strLink = 'https://dl.dropbox.com/s/' + strID;
            console.log(strLink)

            var Src = 'vid' + ID;
            document.getElementById(Src).src = strLink;
        }



        /// ******* End ******* ///


        /// Check lecture Video Complete to watch next lecture
        function vidEnd(check_id) {
            var tdHideShow = "";
            var btnID = '';
            for (var i = 10; i < check_id.length; i++) {
                btnID += check_id[i];
            }
            var Vid = 'vid' + btnID;

            var a = document.getElementById(Vid);

            if (a.ended === true) {
                btnID = parseInt(btnID);
                document.getElementById(check_id).name = '1';
                btnID++;
                tdHideShow = "tableData" + btnID;
                document.getElementById(tdHideShow).removeAttribute("hidden");
                //document.getElementById("hiID").style.display = 'block';
            }

        }

    </script> --}}

    <script type="text/javascript">
        $(document).ready(function() {
            $(".delete").on('click', function(e) {
                e.preventDefault();
                var id = $(this).attr("data-id");
                var confirmation = confirm("Are you sure you want to delete this content?");
                if (confirmation) {
                    $.ajax({
                        type: 'GET',
                        url: "/admin/courses-content/delete/" + id,
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        // data:{user_id: userId},
                        success: function(data) {
                            //Refresh the grid
                            alert(data.success);
                            $(".data-id" + id).remove();
                        },
                        error: function(e) {
                            alert(e.error);
                        }
                    });
                } else {
                    //alert ('no');
                    return false;
                }
            });

        });
    </script>
@endpush

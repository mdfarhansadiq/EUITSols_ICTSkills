@extends('layouts.app')

@section('title', 'Courses Info')

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

                <div id="alertDelete" class="alert alert-danger" role="alert" style="display:none";>
                    Data Delete Successfully
                </div>
                <div class="card">
                    <div class="card-header">
                        <span class="float-left">
                            <h4>Add Course Info</h4>
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
                                <form action="{{ url('/admin/courses-info/create') }}" method="POST"
                                    class="form-horizontal" enctype="multipart/form-data" id="about_form">
                                    @csrf
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTitle">Title<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTitle" name="courseTitle"
                                                placeholder="Enter Course Title">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseCategory">Course Category Name<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <select class="form-control" aria-label="Default select example"
                                                name="courseCategory" id="courseCategory">
                                                <option selected value="">Select Course Category</option>
                                                @foreach ($data2 as $d)
                                                    <option value="{{ $d->id }}">{{ $d->category_name }}
                                                    </option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacher">Course Teacher Name<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <select class="form-control" aria-label="Default select example"
                                                name="courseTeacher" id="courseTeacher">
                                                <option selected value="">Select Course Teacher</option>
                                                @foreach ($data1 as $d)
                                                    <option value="{{ $d->id }}">{{ $d->course_teacher_name }}
                                                    </option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseDuration">Duration<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseDuration"
                                                name="courseDuration" placeholder="Enter Course Duration">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseDescription">Description<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseDescription" placeholder="Write Your Post"
                                                name="courseDescription" rows="17" cols="70"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="about-photo">Course Image: <span class="text-danger">*</span>
                                        </label>
                                        <div class="col-md-9 offset-md-3">
                                            <input type="file" name="courseImage" id="courseImage" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseFee">Fee<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="number" class="form-control" id="courseFee" name="courseFee"
                                                placeholder="Enter Course Fee">
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
                            <h4>View Course Info</h4>
                        </span>
                    </div>
                    <div class="card-body">
                        @include('partial.flush-message')

                        <div class="table table-responsive">
                            <table id="table" class="about_table">
                                <thead>
                                    <tr>
                                        @if (count($data3) != 0)
                                            <th>SL</th>
                                            <th>Title</th>
                                            <th>Category</th>
                                            <th>Teacher</th>
                                            <th>Image</th>
                                            <th>Action</th>
                                        @else
                                            <th style="text-align:center;">{{ 'No Data Found' }}
                                            <th>
                                        @endif

                                    </tr>
                                </thead>
                                @if (count($data3))
                                    <tbody id="showPost">
                                        @foreach ($data3 as $key => $d)
                                            <tr id="row1{{ $d->id }}">
                                                <td id="keyVal">{{ $key + 1 }}</td>
                                                <td id="titleVal">{{ $d->course_title }}</td>

                                                <td>{{ $d->CourseCategoryModel->category_name }}</td>

                                                <td>{{ $d->CourseTeacherModel->course_teacher_name }}</td>
                                                <td><a href="{{ asset($d->course_image) }}" target="_blank">Course
                                                        Image</a></td>
                                                <td><a href="{{ url('/admin/courses-info/edit/view', $d['id']) }}"
                                                        class="edit btn btn-primary"
                                                        data-id="{{ $d->id }}">Edit</a></td>

                                                <td><a href="javascript:void(0);" class="delete btn btn-danger"
                                                        data-id="{{ $d->id }}">Delete</a></td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                @endif
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


                for (instance in CKEDITOR.instances) {
                    CKEDITOR.instances[instance].updateElement();
                }

                var formData = new FormData(this);
                length_array = [formData.get('courseTitle').length, formData.get('courseCategory').length,
                    formData.get('courseTeacher').length
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
                        url: '/admin/courses-info/create',
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
                            // var student = '';
                            // // ITERATING THROUGH OBJECTS
                            $.each(response, function(key, value) {
                                // console.log(response[key]['id']);
                                //CONSTRUCTION OF ROWS HAVING
                                // DATA FROM JSON OBJECT
                                student = '<tbody id="showPost">';
                                student += '<tr>';
                                student += '<td>' +
                                    response.length + '</td>';

                                student += '<td>' +
                                    response[key]['course_title'] + '</td>';

                                student += '<td>' +
                                    response[key]['course_category_id'] + '</td>';

                                student += '<td>' +
                                    response[key]['course_teacher_id'] + '</td>';

                                // student += '<td><a href="{{ asset($d->course_teacher_photo) }}" target="_blank">Teacher Photo</a>'
                                //     '</td>';

                                // student += '<td><a href="{{ asset($d->course_teacher_cv) }}" target="_blank">Teacher CV</a>'
                                //     '</td>';

                                student += '<td><a href="' + response[key][
                                    'course_image'
                                ] + '" target="_blank">Course Image</a></td>';

                                student += '<td><a href="{{ url(' + "/admin/courses-info/edit/view/" + response[key]["id"] + ')}}" class="edit btn btn-primary">Edit</a></td>';

                                student +=
                                    '<td><a href="javascript:void(0);" class="delete btn btn-danger" data-id="' +
                                    response[key]['id'] + '">Delete</a></td>';

                                student += '</tr>';
                                student += '</tbody>'
                            });
                            table_head =
                                '<th>SL</th><th>Title</th><th>Category</th><th>Teacher</th><th>Image</th><th>Action</th>'

                            $(".about_table thead tr th:lt(5)").remove();
                            $('.about_table thead tr').append(table_head)
                            $('.about_table').append(student);
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

            $(".delete").on('click', function(e) {
                e.preventDefault();
                var id = $(this).attr("data-id");
                var token = $("meta[name='csrf-token']").attr("content");
                var confirmation = confirm("Are you sure you want to delete this user?");
                if (confirmation) {
                    $.ajax({
                        type: 'GET',
                        url: "/admin/courses-info/delete/" + id,
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        // data:{user_id: id},
                        data: {
                            "id": id,
                            "_token": token,
                        },
                        success: function(data) {
                            //Refresh the grid
                            console.log(data);
                            // alert(data.success);
                            $('#alertDelete').fadeIn()
                            $("#alertDelete").fadeOut(5000);
                            // $(".data-id" + id).remove();
                            $("#row1" + id).remove();
                            // location.reload();
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
@endpush

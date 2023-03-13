@extends('layouts.app')

@section('title', 'Courses Review')

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
                                <form action="{{ url('/admin/course-review/create') }}" method="POST"
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
                                                @foreach ($data1 as $d)
                                                    <option value="{{ $d->id }}">{{ $d->course_title }}
                                                    </option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudent">Student Name<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <select class="form-control" aria-label="Default select example"
                                                name="courseStudent" id="courseStudent">
                                                <option selected value="">Student Name</option>
                                                @foreach ($data2 as $d)
                                                    <option value="{{ $d->id }}">{{ $d->course_student_name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseReview">Course Review<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseReview" placeholder="Write Your Post"
                                                name="courseReview" rows="17" cols="70"></textarea>
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
                            <h4>View Course Review</h4>
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
                                            <th>Course Title</th>
                                            <th>Student Name</th>
                                            <th>Course Review</th>
                                        @else
                                            <th style="text-align:center;">{{ 'No Data Found' }}
                                            <th>
                                        @endif

                                    </tr>
                                </thead>

                                <tbody id="showPost">
                                    @foreach ($data3 as $key => $d)
                                        <tr id="row{{ $d->id }}">
                                            <td id="keyVal">{{ $key + 1 }}</td>
                                            <td id="titleVal">{{ $d->CoursesInfoModel->course_title }}</td>

                                            <td>{{ $d->CourseStudentModel->course_student_name }}</td>

                                            <td>{!! $d->course_review !!}</td>
                                            {{-- <td><a href="javascript:void(0);" class="delete btn btn-danger"
                                                    data-id="{{ $d->id }}"
                                                    onclick="deleteEvent({{ $d->id }})">Delete</a></td> --}}
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
        function deleteEvent(id) {

            var confirmation = confirm("Are you sure you want to delete this user?");
            if (confirmation) {
                $.ajax({
                    type: 'GET',
                    url: "/admin/course-review/delete/" + id,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    // data:{user_id: userId},
                    success: function(data) {
                        toastr.success("Course Inserted successfully");
                        $("#row" + id).remove();

                    },
                    error: function(e) {
                        alert(e.error);
                    }
                });
            } else {
                return false;
            }
        }
        $(document).ready(function() {
            $("#about_form").submit(function(e) {
                e.preventDefault()

                var data1 = CKEDITOR.instances.courseReview.getData();

                for (instance in CKEDITOR.instances) {
                    CKEDITOR.instances[instance].updateElement();
                }

                var formData = new FormData(this);
                length_array = [formData.get('courseTitle').length, formData.get('courseStudent').length,
                    data1.length
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
                        url: '/admin/course-review/create',
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

                            var courseTitle = document.querySelector(
                                '#courseTitle option:checked').text;
                            var courseStudent = document.querySelector(
                                '#courseStudent option:checked').text;

                            var student = '';
                            // // ITERATING THROUGH OBJECTS
                            $.each(response, function(key, value) {
                                // console.log(response[key]['id']);
                                //CONSTRUCTION OF ROWS HAVING
                                // DATA FROM JSON OBJECT

                                if (response.length == 1) {

                                    // student = '<tbody id="showPost">';
                                    student += '<tr id="row' + response[key]["id"] +
                                        '">';
                                    student += '<td>' +
                                        response.length + '</td>';

                                    student += '<td>' +
                                        courseTitle + '</td>';

                                    student += '<td>' +
                                        courseStudent + '</td>';

                                    student += '<td>' +
                                        response[key]['course_review'] + '</td>';


                                    // student +=
                                    //     '<td><a href="' + editUrl +
                                    //     '"class="edit btn btn-primary">Edit</a></td>';

                                    // student +=
                                    //     '<td><a href="javascript:void(0);" class="delete btn btn-danger" onclick="deleteEvent(' +
                                    //     response[key]['id'] + ')">Delete</a></td>';

                                    student += '</tr>';
                                    // student += '</tbody>';
                                } else {
                                    student = '<tr id="row' + response[key]["id"] +
                                        '">';
                                    student += '<td>' +
                                        response.length + '</td>';

                                    student += '<td>' +
                                        courseTitle + '</td>';

                                    student += '<td>' +
                                        courseStudent + '</td>';

                                    student += '<td>' +
                                        response[key]['course_review'] + '</td>';


                                    // student +=
                                    //     '<td><a href="' + editUrl +
                                    //     '"class="edit btn btn-primary">Edit</a></td>';

                                    // student +=
                                    //     '<td><a href="javascript:void(0);" class="delete btn btn-danger" onclick="deleteEvent(' +
                                    //     response[key]['id'] + ')">Delete</a></td>';

                                    student += '</tr>';
                                }
                            });

                            if (response.length == 1) {
                                table_head =
                                    '<th>SL</th><th>Course Title</th><th>Student Name</th><th>Action</th>';
                                $(".about_table thead tr th:lt(5)").remove();
                                $('.about_table thead tr').append(table_head);
                                $('#showPost').append(student);

                                student = '';

                                CKEDITOR.instances.courseReview.setData('');
                                $('#courseTitle').val('');
                                $('#courseStudent').val('');
                            } else {

                                $('#showPost').append(student);

                                CKEDITOR.instances.courseReview.setData('');
                                $('#courseTitle').val('');
                                $('#courseStudent').val('');
                                student = '';
                            }



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
@endpush

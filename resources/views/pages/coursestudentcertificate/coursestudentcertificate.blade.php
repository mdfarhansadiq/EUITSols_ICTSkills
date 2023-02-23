@extends('layouts.app')

@section('title', 'Course Student Certificate')

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
                            <h4>Add Course Student Certificate</h4>
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
                                <form action="{{ url('/admin/course-enroll-student/create') }}" method="POST"
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
                                                    <option value="{{ $d->CoursesInfoModel->id }}">{{ $d->CoursesInfoModel->course_title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseEnrollStudent">Student Name<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <select class="form-control" aria-label="Default select example"
                                                name="courseEnrollStudent" id="courseEnrollStudent">
                                                <option selected value="">Select Student Name</option>
                                                @foreach ($data1 as $d)
                                                    <option value="{{ $d->CourseStudentModel->id }}">
                                                        {{ $d->CourseStudentModel->course_student_name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    {{-- <div class="form-group row">
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
                                    </div> --}}

                                    
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="numberCourseCertificate">Number Of Certificate<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="number" class="form-control" id="courseCertificate"
                                                name="courseCertificate" placeholder="Enter Number Of Certificate">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseCompletionDate">Course Completion Date<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control" id="courseCompletionDate"
                                                name="courseCompletionDate" placeholder="Enter Course Start Date">
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

                        {{-- <div class="table table-responsive">
                            <table id="table" class="about_table">
                                <thead>
                                    <tr>
                                        @if (count($data2) != 0)
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
                                @if (count($data2))
                                    <tbody id="showPost">
                                        @foreach ($data2 as $key => $d)
                                            <tr>
                                                <td id="keyVal">{{ $key + 1 }}</td>

                                                <td>{!! $d->course_content_link !!}</td>

                                            </tr>
                                        @endforeach
                                    </tbody>
                                @endif
                            </table>
                        </div> --}}

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
    {{-- <script type="text/javascript">
        $(document).ready(function() {
            $("#about_form").submit(function(e) {
                e.preventDefault()
                var data1 = CKEDITOR.instances.courseReview.getData();
                // var data2 = CKEDITOR.instances.courseTeacherLinkedIn.getData();
                // var data3 = CKEDITOR.instances.courseTeacherGitHub.getData();
                // var data4 = CKEDITOR.instances.courseTeacherWebSite.getData();
                // var data5 = CKEDITOR.instances.courseTeacherDescription.getData();

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
                            var student = '';
                            // ITERATING THROUGH OBJECTS
                            $.each(response, function(key, value) {
                                //CONSTRUCTION OF ROWS HAVING
                                // DATA FROM JSON OBJECT
                                student = '<tbody id="showPost">';
                                student += '<tr>';
                                student += '<td>' +
                                    response.length + '</td>';

                                student += '<td>' +
                                    value.courseTitle + '</td>';

                                student += '<td>' +
                                    value.courseStudent + '</td>';



                                student += '<td>' +
                                    value.courseReview + '</td>';

                                student += '</tr>';
                                student += '</tbody>'
                            });
                            table_head =
                                '<th>SL</th><th>Course Title</th><th>Student</th><th>Review</th>'

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
@endpush

@extends('layouts.app')

@section('title', 'Course Student')

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
                            <h4>Add Course Student Info</h4>
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
                                <form action="{{ url('/admin/student-info/create') }}" method="POST"
                                    class="form-horizontal" enctype="multipart/form-data" id="about_form">
                                    @csrf
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentName">Name<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseStudentName"
                                                name="courseStudentName" placeholder="Enter Course Student Name">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentEmail">Email<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" id="courseStudentEmail"
                                                name="courseStudentEmail" placeholder="Enter Course Student Email">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentPhone">Phone<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="tel" class="form-control" id="courseStudentPhone"
                                                name="courseStudentPhone" placeholder="Enter Course Student Phone">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentDOB">Date Of Birth<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control" id="courseStudentDOB"
                                                name="courseStudentDOB">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentProfession">Profession<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseStudentProfession"
                                                name="courseStudentProfession" placeholder="Enter Profession">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentCompany">Company/Institute<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseStudentCompany"
                                                name="courseStudentCompany" placeholder="Enter Company/Institute Name">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentInterestArea">Interest Area<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseStudentInterestArea"
                                                name="courseStudentInterestArea" placeholder="Enter Interest Area">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentFacebook">Facebook URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="url" class="form-control" id="courseStudentFacebook"
                                                name="courseStudentFacebook" placeholder="Enter Facebook URL">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentLinkedIn">LinkedIn URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">

                                            <input type="url" class="form-control" id="courseStudentLinkedIn"
                                                name="courseStudentLinkedIn" placeholder="Enter LinkedIn URL">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentGitHub">GitHub URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="url" class="form-control" id="courseStudentGitHub"
                                                name="courseStudentGitHub" placeholder="Enter GitHub URL">

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentWebSite">WebSite URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">

                                            <input type="url" class="form-control" id="courseStudentWebSite"
                                                name="courseStudentWebSite" placeholder="Enter WebSite URL">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentAddress">Address<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseStudentAddress"
                                                name="courseStudentAddress" placeholder="Enter Address">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseStudentDescription">Description<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseStudentDescription" placeholder="Write Your Post"
                                                name="courseStudentDescription" rows="17" cols="70"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="about-photo">Photo: <span class="text-danger">*</span>
                                        </label>
                                        <div class="col-md-9 offset-md-3">
                                            <input type="file" name="courseStudentPhoto" id="courseStudentPhoto"
                                                class="form-control">
                                        </div>
                                    </div>
                                    {{-- <div class="form-group row">
                                        <label for="about-cv">CV: <span class="text-danger">*</span>
                                        </label>
                                        <div class="col-md-9 offset-md-3">
                                            <input type="file" name="courseStCV" id="courseTeacherCV" class="form-control">
                                        </div>
                                    </div> --}}

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
                            <h4>View Course Student</h4>
                        </span>
                    </div>
                    <div class="card-body">
                        @include('partial.flush-message')

                        <div class="table table-responsive">
                            <table id="table" class="about_table">
                                <thead>
                                    <tr>
                                        @if (count($data) != 0)
                                            <th>SL</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Photo</th>
                                            <th>Action</th>
                                        @else
                                            <th style="text-align:center;">{{ 'No Data Found' }}
                                            <th>
                                        @endif

                                    </tr>
                                </thead>
                                @if (count($data))
                                    <tbody id="showPost">
                                        @foreach ($data as $key => $d)
                                            <tr>
                                                <td id="keyVal">{{ $key + 1 }}</td>
                                                <td id="titleVal">{{ $d->course_student_name }}</td>

                                                <td>{{ $d->course_student_email }}</td>
                                                <td>{{ $d->course_student_phone }}</td>

                                                <td>
                                                    <a href="{{ asset($d->course_student_photo) }}"
                                                        target="_blank">Student Photo</a>
                                                </td>

                                                <td><a href="javascript:void(0);" class="delete" type="button"
                                                        data-id="{{ $d->id }}">Delete</a></td>

                                                <td><a href="{{ url('/admin/student-info/edit/view', $d['id']) }}"
                                                        class="edit" type="button"
                                                        data-id="{{ $d->id }}">Edit</a></td>

                                                {{-- <td><a href="{{ asset($d->course_teacher_cv) }}" target="_blank">Teacher CV</a></td>
                                    <td><div class="btn-group">
                                        <a href="javascript:void(0)" class="btn btn-info btnView"
                                            data-id="{{ $d->id }}"><i class="fas fa-eye"></i></a></td> --}}
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

    {{-- <script type="text/javascript">
        $(document).ready(function() {
            $("#about_form").submit(function(e) {
                e.preventDefault()
                var data1 = CKEDITOR.instances.courseStudentFacebook.getData();
                var data2 = CKEDITOR.instances.courseStudentLinkedIn.getData();
                var data3 = CKEDITOR.instances.courseStudentGitHub.getData();
                var data4 = CKEDITOR.instances.courseStudentWebSite.getData();
                var data5 = CKEDITOR.instances.courseStudentDescription.getData();

                for (instance in CKEDITOR.instances) {
                    CKEDITOR.instances[instance].updateElement();
                }

                var formData = new FormData(this);
                length_array = [formData.get('courseStudentName').length, formData.get('courseStudentEmail')
                    .length, formData.get('courseStudentPhone').length, formData.get('courseStudentDOB')
                    .length, formData.get('courseStudentProfession').length, formData.get(
                        'courseStudentCompany').length, formData.get('courseStudentInterestArea')
                    .length, formData.get('courseStudentAddress').length, data1.length, data2.length,
                    data3.length, data4.length, data5.length, formData.get('courseStudentPhoto').length
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
                        url: '/admin/student-info/create',
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
                                    value.courseStudentName + '</td>';

                                student += '<td>' +
                                    value.courseStudentEmail + '</td>';

                                student += '<td>' +
                                    value.courseStudentPhoto + '</td>';

                                student +=
                                    '<td><a href="{{ asset($d->course_student_photo) }}" target="_blank">Student Photo</a>'
                                '</td>';

                                // student += '<td>' +
                                //     value.Articles + '</td>';

                                // student+='<td class="text-middle py-0 align-middle"><div class="btn-group"><a href="javascript:void(0)" class="btn btn-info btnView" data-id="'+value.id+'"><i class="fas fa-eye"></i></a><a href="" class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a><a href="" class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a></div></td>'

                                student += '</tr>';
                                student += '</tbody>'
                            });
                            table_head =
                                '<th>SL</th><th>Name</th><th>Email</th><th>Phone</th><th>Photo</th>'

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

            $(".delete").on('click', function(e) {
                e.preventDefault();
                var id = $(this).attr("data-id");
                var confirmation = confirm("Are you sure you want to delete this?");
                if (confirmation) {
                    $.ajax({
                        type: 'GET',
                        url: "/admin/student-info/delete/" + id,
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
    </script> --}}


    {{-- <script>
    @endpush

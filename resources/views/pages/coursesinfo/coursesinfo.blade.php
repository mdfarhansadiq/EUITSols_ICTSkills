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
                                <form action="{{ url('/admin/teacher-info/create') }}" method="POST" class="form-horizontal"
                                    enctype="multipart/form-data" id="about_form">
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
                                        <label class="col-sm-3" for="courseCategory">Category Name<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                                <select class="form-select" aria-label="Default select example"
                                                name="courseTeacher" id="courseTeacher">
                                                <option selected value="">Select Teacher</option>
                                                @foreach ($data as $d)
                                                    <option value="{{ $d->id }}">{{ $d->course_teacher_name }}
                                                    </option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacher">Teacher Name<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                                <select class="form-select" aria-label="Default select example"
                                                name="courseTeacher" id="courseTeacher">
                                                <option selected value="">Select Teacher</option>
                                                @foreach ($data as $d)
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
                                            <input type="text" class="form-control" id="courseDuration" name="courseDuration"
                                                placeholder="Enter Course Duration">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseDescription">Description<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseDescription" placeholder="Write Your Post" name="courseDescription"
                                                rows="17" cols="70"></textarea>
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

                        {{-- <div class="table table-responsive">
                            <table id="table" class="about_table">
                                <thead>
                                    <tr>
                                        @if(count($data)!=0)
                                        <th>SL</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>

                                        <th>Photo</th>
                                        <th>CV</th>
                                        @else
                                        <th style="text-align:center;">{{"No Data Found"}}<th>

                                        @endif

                                    </tr>
                                </thead>
                                @if(count($data))
                                <tbody id="showPost">
                                    @foreach($data as $key => $d)

                                <tr>
                                    <td id="keyVal">{{ $key + 1 }}</td>
                                    <td id="titleVal">{{ $d->course_teacher_name }}</td>

                                    <td>{{ $d->course_teacher_email }}</td>
                                    <td>{{ $d->course_teacher_phone }}</td>
                                    <td>
                                        <a href="{{ asset($d->course_teacher_photo) }}" target="_blank">Teacher Photo</a>
                                    </td>

                                    <td><a href="{{ asset($d->course_teacher_cv) }}" target="_blank">Teacher CV</a></td>
                                    <td><div class="btn-group">
                                        <a href="javascript:void(0)" class="btn btn-info btnView"
                                            data-id="{{ $d->id }}"><i class="fas fa-eye"></i></a></td>
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
                var data1 = CKEDITOR.instances.courseTeacherFacebook.getData();
                var data2 = CKEDITOR.instances.courseTeacherLinkedIn.getData();
                var data3 = CKEDITOR.instances.courseTeacherGitHub.getData();
                var data4 = CKEDITOR.instances.courseTeacherWebSite.getData();
                var data5 = CKEDITOR.instances.courseTeacherDescription.getData();

                for ( instance in CKEDITOR.instances ) {
                    CKEDITOR.instances[instance].updateElement();
                }

                var formData = new FormData(this);
                length_array = [formData.get('courseTeacherName').length, formData.get('courseTeacherEmail').length, formData.get('courseTeacherPhone').length, formData.get('courseTeacherDOB').length, formData.get('courseTeacherProfession').length, formData.get('courseTeacherCompany').length, formData.get('courseTeacherInterestArea').length, formData.get('courseTeacherAddress').length, data1.length, data2.length, data3.length, data4.length, data5.length, formData.get('courseTeacherPhoto').lengt, formData.get('courseTeacherCV').length]
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
                    }
                    else
                    {
                        $.ajax({
                    url: '/admin/teacher-info/create',
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
                                value.courseTeacherName + '</td>';

                            student += '<td>' +
                                value.courseTeacherEmail + '</td>';

                            student += '<td>' +
                                value.courseTeacherPhoto + '</td>';

                            student += '<td><a href="{{ asset($d->course_teacher_photo) }}" target="_blank">Teacher Photo</a>'
                                '</td>';

                            student += '<td><a href="{{ asset($d->course_teacher_cv) }}" target="_blank">Teacher CV</a>'
                                '</td>';

                            // student += '<td>' +
                            //     value.Articles + '</td>';

                            // student+='<td class="text-middle py-0 align-middle"><div class="btn-group"><a href="javascript:void(0)" class="btn btn-info btnView" data-id="'+value.id+'"><i class="fas fa-eye"></i></a><a href="" class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a><a href="" class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a></div></td>'

                            student += '</tr>';
                            student +='</tbody>'
                        });
                        table_head = '<th>SL</th><th>Name</th><th>Email</th><th>Phone</th><th>Photo</th>'

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
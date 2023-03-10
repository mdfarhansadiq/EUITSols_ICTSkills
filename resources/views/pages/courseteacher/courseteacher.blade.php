@extends('layouts.app')

@section('title', 'Course Teacher')

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
                            <h4>Add Course Teacher Info</h4>
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
                                <form action="{{ url('/admin/teacher-info/create') }}" method="POST"
                                    class="form-horizontal" enctype="multipart/form-data" id="about_form">
                                    @csrf
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherName">Name<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherName"
                                                name="courseTeacherName" placeholder="Enter Course Teacher Name">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherEmail">Email<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" id="courseTeacherEmail"
                                                name="courseTeacherEmail" placeholder="Enter Course Teacher Email">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherPhone">Phone<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="tel" class="form-control" id="courseTeacherPhone"
                                                name="courseTeacherPhone" placeholder="Enter Course Teacher Phone">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherDOB">Date Of Birth<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control" id="courseTeacherDOB"
                                                name="courseTeacherDOB" placeholder="Enter Course Teacher Phone">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherProfession">Profession<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherProfession"
                                                name="courseTeacherProfession" placeholder="Enter Profession">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherCompany">Company<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherCompany"
                                                name="courseTeacherCompany" placeholder="Enter Company Name">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherInterestArea">Interest Area<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherInterestArea"
                                                name="courseTeacherInterestArea" placeholder="Enter Interest Area">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherFacebook">Facebook URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="url" class="form-control" id="courseTeacherFacebook"
                                                name="courseTeacherFacebook" placeholder="Enter Facebook URL">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherLinkedIn">LinkedIn URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="url" class="form-control" id="courseTeacherLinkedIn"
                                                name="courseTeacherLinkedIn" placeholder="Enter LinkedIn URL">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherGitHub">GitHub URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="url" class="form-control" id="courseTeacherGitHub"
                                                name="courseTeacherGitHub" placeholder="Enter GitHub URL">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherWebSite">WebSite URL<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="url" class="form-control" id="courseTeacherWebSite"
                                                name="courseTeacherWebSite" placeholder="Enter GitHub URL">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherAddress">Address<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="courseTeacherAddress"
                                                name="courseTeacherAddress" placeholder="Enter Address">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseTeacherDescription">Description<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="courseTeacherDescription" placeholder="Write Your Post"
                                                name="courseTeacherDescription" rows="17" cols="70"></textarea>
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

            <div class="col-md-10 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <span class="float-left">
                            <h4>View Course Teacher</h4>
                        </span>
                    </div>
                    <div class="card-body">
                        <div class="table table-responsive">
                            <table id="table" class="about_table">
                                <thead>
                                    <tr>
                                        @if (count($data) != 0)
                                            <th>SL</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            {{-- <th>Date_Of_Birth</th>
                                        <th>Profession</th>
                                        <th>Company/Institute</th>
                                        <th>Interested_Area</th>
                                        <th>Facebook</th>
                                        <th>LinkedIn</th>
                                        <th>Github</th>
                                        <th>Website</th>
                                        <th>Address</th>
                                        <th>Description</th> --}}
                                            <th>Photo</th>
                                            <th>CV</th>
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
                                            <tr id="row{{ $d->id }}">
                                                <td id="keyVal">{{ $key + 1 }}</td>
                                                <td id="titleVal">{{ $d->course_teacher_name }}</td>

                                                <td>{{ $d->course_teacher_email }}</td>
                                                <td>{{ $d->course_teacher_phone }}</td>
                                                {{-- <td>{{ $d->course_teacher_dob }}</td>
                                    <td>{{ $d->course_teacher_profession }}</td>
                                    <td>{{ $d->course_teacher_company }}</td>
                                    <td>{{ $d->course_teacher_interest_area }}</td>
                                    <td>{!! $d->course_teacher_facebook !!}</td>
                                    <td>{!! $d->course_teacher_linkedin !!}</td>
                                    <td>{!! $d->course_teacher_github !!}</td>
                                    <td>{!! $d->course_teacher_website !!}</td>
                                    <td>{{ $d->course_teacher_address }}</td>
                                    <td>{!! $d->course_teacher_description !!}</td> --}}
                                                <td>
                                                    {{-- <img src="{{ asset($d->course_teacher_photo) }}" alt="" title="" height="300" width="300"> --}}
                                                    <a href="{{ asset($d->course_teacher_photo) }}"
                                                        target="_blank">Teacher Photo</a>
                                                </td>

                                                <td><a href="{{ asset($d->course_teacher_cv) }}" target="_blank">Teacher
                                                        CV</a></td>
                                                <td><a href="{{ url('/admin/teacher-info/edit/view', $d['id']) }}"
                                                        class="edit btn btn-primary" type="button"
                                                        data-id="{{ $d->id }}">Edit</a></td>

                                                <td><a href="javascript:void(0);" class="delete btn btn-danger"
                                                        type="button" data-id="{{ $d->id }}"
                                                        onclick="deleteEvent({{ $d->id }})">Delete</a></td>
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


    {{-- <div class="modal fade" id="view-modal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">View Details <span id="view-header"></span></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body row">
                    <div class="col-md-10 m-auto">
                        <div class="table-responsive">
                            <table class="table table-borderless table-striped">
                                <tbody id="view-tbody">
                                    <tr>
                                        <td>Image</td>
                                        <td>
                                            <span id="view-img"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Name</td>
                                        <td>
                                            <span id="view-name"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Status</td>
                                        <td>
                                            <span id="view-status"></span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Created At</td>
                                        <td>
                                            <span id="view-createdAt"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Created By</td>
                                        <td>
                                            <span id="view-createdBy"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Updated At</td>
                                        <td>
                                            <span id="view-updatedAt"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Updated By</td>
                                        <td>
                                            <span id="view-updatedBy"></span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div> --}}
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
                    url: "/admin/teacher-info/delete/" + id,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    // data:{user_id: userId},
                    success: function(data) {
                        toastr.success("Teacher Info Deleted successfully");
                        //Refresh the grid
                        // alert(data.success);
                        $("#row" + id).remove();
                    },
                    error: function(e) {
                        alert(e.error);
                    }
                });
            } else {
                //alert ('no');
                return false;
            }
        }

        $(document).ready(function() {
            $("#about_form").submit(function(e) {
                e.preventDefault()
                var data5 = CKEDITOR.instances.courseTeacherDescription.getData();

                for (instance in CKEDITOR.instances) {
                    CKEDITOR.instances[instance].updateElement();
                }

                var formData = new FormData(this);
                length_array = [formData.get('courseTeacherName').length, formData.get('courseTeacherEmail')
                    .length, formData.get('courseTeacherPhone').length, formData.get('courseTeacherDOB')
                    .length, formData.get('courseTeacherProfession').length, formData.get(
                        'courseTeacherCompany').length, formData.get('courseTeacherInterestArea')
                    .length, formData.get('courseTeacherAddress').length, formData.get('courseTeacherFacebook').length, formData.get('courseTeacherGitHub').length, formData.get('courseTeacherWebSite').length, formData.get('courseTeacherPhoto').length,
                    formData.get('courseTeacherCV').length, data5.length
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
                            console.log()
                            // ITERATING THROUGH OBJECTS
                            $.each(response, function(key, value) {
                                //CONSTRUCTION OF ROWS HAVING
                                // DATA FROM JSON OBJECT
                                var editUrl = "{{ route('courseteacher.edit', ':id') }}";

                                editUrl = editUrl.replace(':id', response[key]["id"]);
                                //console.log(response[key]['category_image']);

                                student = '<tr id="row' + response[key]["id"] + '">';
                                student += '<td>' +
                                    response.length + '</td>';

                                student += '<td>' +
                                    response[key]["course_teacher_name"] + '</td>';

                                student += '<td>' +
                                    response[key]["course_teacher_email"] + '</td>';

                                student += '<td>' +
                                    response[key]["course_teacher_phone"] + '</td>';

                                student +=
                                    '<td><a href="{{ asset($d->course_teacher_photo) }}" target="_blank">Teacher Photo</a>'
                                '</td>';

                                student +=
                                    '<td><a href="{{ asset($d->course_teacher_cv) }}" target="_blank">Teacher CV</a>'
                                '</td>';

                                student +=
                                    '<td><a href="' + editUrl +
                                    '"class="edit btn btn-primary">Edit</a></td>';

                                student +=
                                    '<td><a href="javascript:void(0);" class="delete btn btn-danger" onclick="deleteEvent('+response[key]['id']+')">Delete</a></td>';
                                // student += '<td>' +
                                //     value.Articles + '</td>';

                                // student+='<td class="text-middle py-0 align-middle"><div class="btn-group"><a href="javascript:void(0)" class="btn btn-info btnView" data-id="'+value.id+'"><i class="fas fa-eye"></i></a><a href="" class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a><a href="" class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a></div></td>'

                                student += '</tr>';

                            });
                            $('#showPost').append(student);
                            // showJobs(response);
                            document.getElementById('courseTeacherName').value = '';
                            document.getElementById('courseTeacherEmail').value = '';
                            document.getElementById('courseTeacherPhone').value = '';
                            document.getElementById('courseTeacherDOB').value = '';
                            CKEDITOR.instances.courseTeacherDescription.setData('');
                            document.getElementById('courseTeacherProfession').value = '';
                            document.getElementById('courseTeacherCompany').value = '';
                            document.getElementById('courseTeacherInterestArea').value = '';
                            document.getElementById('courseTeacherFacebook').value = '';
                            document.getElementById('courseTeacherGitHub').value = '';
                            document.getElementById('courseTeacherWebSite').value = '';
                            document.getElementById('courseTeacherLinkedIn').value = '';
                            document.getElementById('courseTeacherAddress').value = '';
                            document.getElementById('courseTeacherPhoto').value = '';
                            document.getElementById('courseTeacherCV').value = '';

                        },
                        error: function(error) {
                            $('#alertError').fadeIn()
                            $("#alertError").fadeOut(5000);
                        },
                    });
                }

                return false;

            });

            // $('.btnView').click(function() {
            //     if ($(this).data('id') != null || $(this).data('id') != '') {
            //         let url = ("{{ route('asset.setup.brand.show', ['id']) }}");
            //         let _url = url.replace('id', $(this).data('id'));
            //         $.ajax({
            //             url: _url,
            //             method: "GET",
            //             success: function(response) {
            //                 $('#view-img').html(response.img);
            //                 $('#view-name').html(response.name);
            //                 $('#view-status').html(response.status);
            //                 $('#view-createdAt').html(response.created_at ? new Date(response
            //                     .created_at) : '');
            //                 $('#view-createdBy').html(response.created_user ? response
            //                     .created_user.name : 'system');
            //                 $('#view-updatedAt').html(response.updated_at ? new Date(response
            //                     .updated_at) : '');
            //                 $('#view-updatedBy').html(response.updated_user ? response
            //                     .updated_user.name : '');
            //                 $('#view-modal').modal('show');
            //             }
            //         });
            //     } else {
            //         alart('Something went wrong');
            //     }
            // });

            // $(".delete").on('click', function(e) {
            //     e.preventDefault();
            //     var id = $(this).attr("data-id");
            // });


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

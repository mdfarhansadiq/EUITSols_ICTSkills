@extends('layouts.app')

@section('title', 'About')

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
                            <h4>Add About</h4>
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
                                <form action="{{ url('/about/assigned-officer-list-create') }}" method="POST" class="form-horizontal"
                                    enctype="multipart/form-data" id="about_form">
                                    @csrf
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="title">Title<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="title" name="title"
                                                placeholder="Enter Title">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="section">Section/Purpose<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="section" name="section"
                                                placeholder="Enter Section/Purpose">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="contact">Contact<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="contact" name="contact"
                                                placeholder="Enter Contact">
                                        </div>
                                    </div>
                                    {{-- <div class="form-group row">
                                        <label class="col-sm-3" for="description">Description<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="description" placeholder="Write Your Post" name="description"
                                                rows="17" cols="70" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="about-photo">Photo: <span class="text-danger">*</span>
                                        </label>
                                        <div class="col-md-9 offset-md-3">
                                            <input type="file" name="image" id="image" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-3" for="visionmission">Vision & Mission<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="visionmission" placeholder="Write Your Post" name="visionmission"
                                                rows="17" cols="70" required></textarea>
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
                            <h4>View Assigned Officer List</h4>
                        </span>
                        {{-- <span class="float-right">
                    @if (Auth::user()->can('add blood-group') || Auth::user()->role->id == 1)<a href="{{ route('bloodgroup.create') }}" class="btn btn-info">Add new Blood Group</a>@endif
                </span> --}}
                    </div>
                    <div class="card-body">
                        @include('partial.flush-message')

                        <div class="table table-responsive">
                            <table id="table" class="about_table">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Title</th>
                                        <th>Section/Purpose</th>
                                        <th>Contact</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody id="showPost">
                                    @foreach($data as $key => $d)

                                <tr>
                                    <td id="keyVal">{{ $key + 1 }}</td>
                                    <td id="titleVal">{{ $d->title }}</td>

                                    <td>{!! $d->section !!}</td>

                                    <td>{!! $d->contact !!}</td>
                                    {{-- <td class="text-middle py-0 align-middle">
                                        <div class="btn-group">
                                            <a href="javascript:void(0)" class="btn btn-info btnView"
                                                data-id="{{ $d->id }}"><i class="fas fa-eye"></i></a>

                                            <a href="{{ route('bloodgroup.edit', $d->id) }}"
                                                class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a>

                                            <a href="{{ route('bloodgroup.destroy', $d->id) }}" class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a>

                                        </div>
                                    </td> --}}

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
                // alert("yes");
                e.preventDefault()

                for ( instance in CKEDITOR.instances ) {
                    CKEDITOR.instances[instance].updateElement();
                }
                var formData = new FormData(this);
                length_array = [formData.get('title').length, formData.get('section').length, formData.get('contact').length]
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
                    url: '/about/assigned-officer-list-create',
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
                                value.title + '</td>';

                            student += '<td>' +
                                value.section + '</td>';

                            student += '<td>' +
                                value.contact + '</td>';
                            // student += '<td>' +
                            //     value.Articles + '</td>';
                            // student+='<td class="text-middle py-0 align-middle"><div class="btn-group"><a href="javascript:void(0)" class="btn btn-info btnView" data-id="'+value.id+'"><i class="fas fa-eye"></i></a><a href="" class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a><a href="" class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a></div></td>'

                            student += '</tr>';
                            student +='</tbody>'
                        });
                        table_head = '<th>SL</th><th>Title</th><th>Section/Purpose</th><th>Contact</th><th>Action</th>'

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

            $('.ckeditor').ckeditor();

        });
    </script>

<script>

// function postDisable()
// {
//     var chk = 0;
//     chk = document.getElementById("keyVal").textContent;
//     if(chk)
//     {
//         document.getElementById("title").disabled = true;
//         document.getElementById("description").disabled = true;
//         document.getElementById("image").disabled = true;
//         document.getElementById("about_btn").disabled = true;
//         document.getElementById("visionmission").disabled = true;
//         //$("#formID").children().prop('disabled',true);
//     }
// }
// postDisable();


// </script>

@endpush

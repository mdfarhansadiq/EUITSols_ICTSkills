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

                            <!-- <span class="float-right">
                                @if (Auth::user()->can('user view') || Auth::user()->role->id == 1)
        <a href="#" class="btn btn-info add_about" onclick='form_show();'>Add About Us</a>
                            </span> -->
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
                                    <form action="{{ url('/about/aboutus-create') }}" method="POST" class="form-horizontal"
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
                                            <label class="col-sm-3" for="description">Description<span
                                                    class="text-danger">*</span></label>
                                            <div class="col-sm-9">
                                                <textarea type="text" class="ckeditor form-control" id="description" placeholder="Write Your Post" name="description"
                                                    rows="17" cols="70"></textarea>
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
                                                <textarea type="text" class="ckeditor form-control" id="visionmission" placeholder="Write Your Post"
                                                    name="visionmission" rows="17" cols="70"></textarea>
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
                        @endif


                    </div>
                </div>

                <div class="col-md-10 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <span class="float-left">
                                <h4>View About Post</h4>
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

                                            @if (count($data) != 0)
                                                <th>SL</th>
                                                <th>Title</th>
                                                <th>Description</th>
                                                <th>Image</th>
                                                <!-- <th>Vision & Mission</th> -->
                                                {{-- <th>Action</th> --}}
                                            @else
                                                <th style="text-align:center;">{{ 'No Data Found' }}
                                                <th>
                                            @endif

                                            {{-- <th>Created By</th> --}}
                                            {{-- <th>Action</th> --}}
                                        </tr>
                                    </thead>
                                    @if (count($data) != 0)
                                        <tbody id="showPost">

                                            @foreach ($data as $key => $d)
                                                <tr>

                                                    <td id="keyVal">{{ $key + 1 }}</td>
                                                    <td id="titleVal">{{ $d->title }}</td>
                                                    {{-- <td>{{ date('d-m-Y', strtotime($d->created_at)) }}</td> --}}
                                                    <td>{!! $d->details !!}</td>
                                                    <td>
                                                        {{-- <img src="{{ asset(.'/public/'.$d->img) }}" alt="" title=""> --}}
                                                        <img src="{{ asset($d->img) }}" alt="" title=""
                                                            height="200" width="200">

                                                        {{-- <img src="storage/app/{{$d ->image}}" /> --}}
                                                    </td>

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
        <script type="text/javascript">
            $(document).ready(function() {

                $("#about_form").on('submit', function(e) {
                    // alert("yes");
                    e.preventDefault()
                    var data1 = CKEDITOR.instances.description.getData();
                    var data2 = CKEDITOR.instances.visionmission.getData();
                    for (instance in CKEDITOR.instances) {
                        CKEDITOR.instances[instance].updateElement();
                    }

                    // e.stopPropagation()
                    var formData = new FormData(this);
                    length_array = [formData.get('title').length, data1.length, data2.length, $('#image').get(0)
                        .files.length
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
                    }
                    else {
                        $.ajax({
                            url: '/about/aboutus-create',
                            type: "post",
                            headers: {
                                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                            },
                            data: formData,
                            async: false,
                            cache: false,
                            contentType: false,
                            processData: false,
                            success: function(response) {
                                $('#alertSuccess').fadeIn()
                                $("#alertSuccess").fadeOut(5000);
                                var student = '';
                                console.log(response);
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

                                    student += '<td>' + value.details + '</td>';

                                    student += '<td><img src="' + value.img +
                                        '" alt="" title="" height = "200" width="200">'
                                    '</td>';

                                    // student+='<td class="text-middle py-0 align-middle"><div class="btn-group"><a href="javascript:void(0)" class="btn btn-info btnView" data-id="'+value.id+'"><i class="fas fa-eye"></i></a><a href="" class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a><a href="" class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a></div></td>'

                                    // student += '<td>' +
                                    //     value.visionmission + '</td>';
                                    // student += '<td>' +
                                    //     value.Articles + '</td>';

                                    student += '</tr>';
                                    student += '</tbody>'
                                });
                                table_head =
                                    '<th>SL</th><th>Title</th><th>Description</th><th>Image</th><th>Action</th>'

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
                    $('.ckeditor').ckeditor();


                });
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

            // function form_show(){
            //     console.log("YES");

            //     $.ajax({
            //                     url: '/about/aboutAjaxShow',
            //                     type: "get",
            //                     headers: {
            //                         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            //                     },
            //                     success: function(response) {
            //                         console.log(response);
            //                         if(response==0){
            //                             $(".card-body:eq(0)").show();
            //                         }
            //                         else{
            //                             $(".card-body:eq(0)").hide();
            //                         }

            //                         // ITERATING THROUGH OBJECTS

            //                         // $('#showPost').append(student);
            //                         // showJobs(response);

            //                     },
            //                 });
            //                 return false;
            // }
        </script>
    @endpush

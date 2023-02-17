@extends('layouts.app')

@section('title', 'CSR Activities')

@push('third_party_stylesheets')
@endpush

@push('page_css')
@endpush

@section('content')

    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <span class="float-left">
                            <h4>Add CSR Activities</h4>
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
                                <form action="{{ url('/about/csr-activities-create') }}" method="POST" class="form-horizontal"
                                    enctype="multipart/form-data" id="about_form">
                                    @csrf
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="title">Activity Title<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="title" name="title"
                                                placeholder="Enter Title" >
                                            {{-- @if ($errors->has('name'))
                                            <span class="text-danger">{{ $errors->first('name') }}</span>
                                        @endif --}}
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="actidetails">Activity Description<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="actidetails" placeholder="Write Your Post" name="actidetails"
                                                rows="17" cols="70" ></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="about-photo">Header Image: <span class="text-danger">*</span>
                                        </label>
                                        <div class="col-md-9 offset-md-3">
                                            <input type="file" name="headerimg" id="headerimg" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="about-photo">Activity Description Image: <span class="text-danger">*</span>
                                        </label>
                                        <div class="col-md-9 offset-md-3">
                                            <input type="file" name="descriimg" id="descriimg" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="guard_name"></label>
                                        <div class="col-sm-9">
                                            <button id="about_btn" type="submit"
                                                class="btn btn-primary w-100">Post</button>
                                        </div>
                                    </div>
                                    <!-- <script>
                                        // Replace the <textarea id="editor1"> with a CKEditor
                                        // instance, using default configuration.
                                        CKEDITOR.replace( 'actidetails' );
                                    </script> -->
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
                            <h4>View CSR Post</h4>
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
                                        @if(count($data)!=0)
                                        <th>SL</th>
                                        <th>Activity Title</th>
                                        <th>Activity Description</th>
                                         <th>Header Image</th>
                                        <th>Activity Description Image</th>
                                        {{-- <th>Action</th> --}}
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
                                    <td id="titleVal">{{ $d->title }}</td>

                                    <td>{!! $d->actidetails !!}</td>
                                    <td>

                                        <img src="{{ asset($d->headerimg) }}" alt="" title="" height="50" width="50">
                                    </td>
                                    <td>

                                        <img src="{{ asset($d->descriimg) }}" alt="" title="" height="50" width="50">
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
    <script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            // $('#alertSuccess').show() //or fadeIn
            //     // setTimeout(function() {
            //       $("#alertSuccess").fadeOut(3000); //or fadeOut
                // }, 3000);
            $("#about_form").submit(function(e) {
                // alert("yes");
                e.preventDefault()
                var data = CKEDITOR.instances.actidetails.getData();
                e.preventDefault();
                for ( instance in CKEDITOR.instances ) {
                    CKEDITOR.instances[instance].updateElement();
                }
                var formData = new FormData(this);
                $.ajax({
                    url: '/about/csr-activities-create',
                    type: "post",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(response) {
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
                                    value.actidetails + '</td>';

                                student += '<td><img src="'+value.headerimg+'" alt="" title="" height = "100" width="100">'
                                    '</td>';

                                student += '<td><img src="'+value.descriimg+'" alt="" title="" height = "100" width="100">'
                                    '</td>';


                                // student+='<td class="text-middle py-0 align-middle"><div class="btn-group"><a href="javascript:void(0)" class="btn btn-info btnView" data-id="'+value.id+'"><i class="fas fa-eye"></i></a><a href="" class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a><a href="" class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a></div></td>'

                                // student += '<td>' +
                                //     value.Articles + '</td>';

                                student += '</tr>';
                                student +='</tbody>'
                            });
                            table_head = '<th>SL</th><th>Title</th><th>Activity Details</th><th>Header Image</th><th>Description Image</th><th>Action</th>'

                            $(".about_table thead tr th:lt(5)").remove();
                            $('.about_table thead tr').append(table_head)
                            $('.about_table').append(student);
                            // showJobs(response);

                        },
                        error: function (error) {
                            $('#alertError').fadeIn()
                            $("#alertError").fadeOut(5000);
                        },
                        // complete: function(xhr, textStatus) {
                        //     console.log("status");
                        //     $('#alertError').fadeIn()
                        //     $("#alertError").fadeOut(5000);
                        // } ,
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


</script>

@endpush

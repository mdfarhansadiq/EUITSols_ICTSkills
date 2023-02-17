@extends('layouts.app')

@section('title', 'Notice Board')

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
                            <h4>Add Notice</h4>
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
                                <form action="{{ url('/notice-board-create') }}" method="POST" class="form-horizontal"
                                    enctype="multipart/form-data" id="about_form">
                                    @csrf
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="notice">Notice<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="notice" name="notice"
                                                placeholder="Enter Notice" required>
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
                            <h4>View Notice Board</h4>
                        </span>

                    </div>
                    <div class="card-body">
                        @include('partial.flush-message')

                        <div class="table table-responsive">
                            <table id="table" class="">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Notice</th>
                                        {{-- <th>Action</th> --}}
                                    </tr>
                                </thead>
                                <tbody id="showPost">
                                    @foreach($data as $key => $d)

                                <tr>
                                    <td id="keyVal">{{ $key + 1 }}</td>
                                    <td id="titleVal">{{ $d->notice }}</td>
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
                e.stopPropagation()
                var formData = new FormData(this);
                $.ajax({
                    url: '/notice-board-create',
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
                            student = '';
                            student += '<tr>';
                            student += '<td>' +
                                value.id + '</td>';

                            student += '<td>' +
                                value.notice + '</td>';

                            student += '</tr>';
                        });
                        $('#showPost').append(student);
                        // showJobs(response);

                    },
                });
                return false;

            });

            //$('.ckeditor').ckeditor();

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

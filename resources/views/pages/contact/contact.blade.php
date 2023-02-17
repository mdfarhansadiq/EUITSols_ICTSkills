@extends('layouts.app')

@section('title', 'Contact Address')

@push('third_party_stylesheets')
@endpush

@push('page_css')
@endpush

@section('content')
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-12">
                {{-- @if(!count($data)) --}}
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
                            <h4>Add Contact Address</h4>
                        </span>
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
                                <form action="{{ url('/contact-address-create') }}" method="POST" class="form-horizontal"
                                    enctype="multipart/form-data" id="about_form">
                                    @csrf
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="email">Email<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="email" name="email"
                                                placeholder="Enter Email">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="phone">Phone<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="phone" name="phone"
                                                placeholder="Enter Phone">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="telephone">Telephone<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="telephone" name="telephone"
                                                placeholder="Enter Telephone">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="fax">Fax<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="fax" name="fax"
                                                placeholder="Enter Fax">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="address">Address<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="ckeditor form-control" id="address" placeholder="Write Your Post" name="address"
                                                rows="17" cols="70"></textarea>
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
                {{-- @endif --}}
            </div>

            <div class="col-md-10 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <span class="float-left">
                            <h4>View Contact Details</h4>
                        </span>

                    </div>
                    <div class="card-body">
                        @include('partial.flush-message')

                        <div class="table table-responsive">
                            <table id="table" class="about_table">
                                <thead>
                                    <tr>
                                        @if(count($data)!=0)
                                        <th>SL</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Telephone</th>
                                        <th>Fax</th>
                                        <th>Address</th>
                                        {{-- <th>Action</th> --}}
                                        @else
                                        <th style="text-align:center;">{{"No Data Found"}}<th>

                                        @endif
                                    </tr>
                                </thead>
                                @if(count($data)!=0)
                                <tbody id="showPost">
                                    @foreach($data as $key => $d)

                                <tr>
                                    <td id="keyVal">{{ $key + 1 }}</td>
                                    <td id="titleVal">{{ $d->email }}</td>
                                    <td id="titleVal">{{ $d->phone }}</td>
                                    <td id="titleVal">{{ $d->telephone }}</td>
                                    <td id="titleVal">{{ $d->fax }}</td>
                                    <td id="titleVal">{!! $d->address !!}</td>
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
            $("#about_form").submit(function(e) {
                // alert("yes");
                e.preventDefault()
                var data1 = CKEDITOR.instances.address.getData();
                for ( instance in CKEDITOR.instances ) {
                    CKEDITOR.instances[instance].updateElement();
                }
                var formData = new FormData(this);
                length_array = [formData.get('email').length, formData.get('phone').length, formData.get('telephone').length, formData.get('fax').length, data1.length]
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
                    url: '/contact-address-create',
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
                                value.email + '</td>';

                            student += '<td>' +
                                value.phone + '</td>';

                            student += '<td>' +
                                value.telephone + '</td>';

                            student += '<td>' +
                                value.fax + '</td>';

                            student += '<td>' +
                                value.address + '</td>';

                            // student+='<td class="text-middle py-0 align-middle"><div class="btn-group"><a href="javascript:void(0)" class="btn btn-info btnView" data-id="'+value.id+'"><i class="fas fa-eye"></i></a><a href="" class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a><a href="" class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a></div></td>'

                            student += '</tr>';

                            student +='</tbody>'
                        });
                        table_head = '<th>SL</th><th>Email</th><th>Phone</th><th>Telephone</th><th>Fax</th><th>Address</th><th>Action</th>'

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

@extends('layouts.app')

@section('title', 'Course Discount')

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
                            <h4>Add Course Discount</h4>
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
                                <form action="/admin/course-discount/update/{{ $data['id'] }}" method="POST"
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
                                                @foreach ($courseinfo as $d)
                                                    <option value="{{ $d->id }}"
                                                        @if ($d->id == $data->course_title_id) selected @endif>
                                                        {{ $d->course_title }}</option>
                                                @endforeach
                                            </select>

                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseDiscountStart">Discount Start<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control" id="courseDiscountStart"
                                                name="courseDiscountStart" placeholder="Enter Start Date"
                                                value="{{ $data->course_discount_start }}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3" for="courseDiscountEnd">Discount End<span
                                                class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <input type="date" class="form-control" id="courseDiscountEnd"
                                                name="courseDiscountEnd" placeholder="Enter End Date"
                                                value="{{ $data->course_discount_end }}">
                                        </div>
                                    </div>

                                    @if ($data->course_discount_amount)
                                        <div class="form-group row" id="discountAmount">
                                            <label class="col-sm-3" for="courseDiscountAmount">Discount Amount<span
                                                    class="text-danger">*</span></label>
                                            <div class="col-sm-9">
                                                <input type="number" class="form-control" id="courseDiscountAmount"
                                                    name="courseDiscountAmount" placeholder="Enter Discount Amount"
                                                    value="{{ $data->course_discount_amount }}">
                                                <br>
                                            </div>

                                            <label class="col-sm-3" for="courseDiscountType">Discount Type<span
                                                    class="text-danger">*</span></label>
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id="radio2"
                                                    name="optradio" value="option2" onchange="discountType(this)">
                                                <label class="form-check-label ml-4" for="radio2">Percentage</label>
                                            </div>

                                            <div>
                                                <div class="form-group row" style="display: none" id="discountPercentage">
                                                    <label class="col-sm-3" for="courseDiscountPercentage">Discount
                                                        Amount<span class="text-danger">*</span></label>
                                                    <div class="col-sm-9">
                                                        <input type="number" class="form-control"
                                                            id="courseDiscountPercentage" name="courseDiscountPercentage"
                                                            placeholder="Enter Discount Percentage">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endif

                                    @if ($data->course_discount_percentage)
                                        <div class="form-group row" id="discountPercentage">
                                            <label class="col-sm-3" for="courseDiscountPercentage">Discount
                                                Percentage<span class="text-danger">*</span></label>
                                            <div class="col-sm-9">
                                                <input type="number" class="form-control" id="courseDiscountPercentage"
                                                    name="courseDiscountPercentage"
                                                    placeholder="Enter Discount Percentage"
                                                    value="{{ $data->course_discount_percentage }}">

                                                <br>
                                            </div>

                                            <label class="col-sm-3" for="courseDiscountType">Discount Type<span
                                                    class="text-danger">*</span></label>
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id="radio1"
                                                    name="optradio" value="option1" onchange="discountType(this)">
                                                <label class="form-check-label ml-4" for="radio1">Flat Amount</label>
                                            </div>

                                            <div>
                                                <div class="form-group row" style="display: none" id="discountAmount">
                                                    <label class="col-sm-3" for="courseDiscountAmount">Discount
                                                        Amount<span class="text-danger">*</span></label>
                                                    <div class="col-sm-9">
                                                        <input type="number" class="form-control"
                                                            id="courseDiscountAmount" name="courseDiscountAmount"
                                                            placeholder="Enter Discount Amount">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endif

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

            {{-- <div class="col-md-10 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <span class="float-left">
                            <h4>View Course Discount</h4>
                        </span>
                    </div>
                    <div class="card-body">
                        @include('partial.flush-message')

                        <div class="table table-responsive">
                            <table id="table" class="about_table">
                                <thead>
                                    <tr>
                                        @if (count($data2) != 0)
                                            <th>SL</th>
                                            <th>Course Title</th>
                                            <th>Discount Start</th>
                                            <th>Discount End</th>
                                            <th>Discount Amount</th>
                                            <th>Discount Percentage</th>
                                            <th>Action</th>
                                        @else
                                            <th style="text-align:center;">{{ 'No Data Found' }}
                                            <th>
                                        @endif

                                    </tr>
                                </thead>
                                @if (count($data2))
                                    <tbody id="showPost">
                                        @foreach ($data2 as $key => $d)
                                            <tr id="row{{ $d->id }}">
                                                <td id="keyVal">{{ $key + 1 }}</td>
                                                <td id="titleVal">{{ $d->CoursesInfoModel->course_title }}</td>

                                                <td>{{ $d->course_discount_start }}</td>

                                                <td>{{ $d->course_discount_end }}</td>

                                                <td>{{ $d->course_discount_amount }}</td>

                                                <td>{{ $d->course_discount_percentage }}</td>

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
            </div> --}}
        </div>
    </div>
@endsection

@push('third_party_scripts')
    <script src="{{ asset('assets/js/DataTable/datatables.min.js') }}"></script>
@endpush

@push('page_scripts')
    <script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
    <script>
        function discountType(radio) {
            var discountamount, discountpercentage;
            console.log(radio.value);
            if (radio.value == "option1") {
                document.getElementById('discountAmount').style.display = 'block';
                document.getElementById('courseDiscountPercentage').style.display = 'none';
                // discountpercentage = document.getElementById('courseDiscountPercentage').value;
                document.getElementById('courseDiscountPercentage').value = '';
            } else if (radio.value == 'option2') {
                document.getElementById('courseDiscountAmount').style.display = 'none';
                document.getElementById('discountPercentage').style.display = 'block';
                // discountamount = document.getElementById('courseDiscountAmount').value;
                document.getElementById('courseDiscountAmount').value = '';
            }
        }
    </script>
    {{-- <script type="text/javascript">
        function discountType(radio) {
            if (radio.value == "option1") {
                document.getElementById('discountAmount').style.display = 'block';
                document.getElementById('discountPercentage').style.display = 'none';
                document.getElementById('courseDiscountPercentage').value = '';
            } else if (radio.value == 'option2') {
                document.getElementById('discountAmount').style.display = 'none';
                document.getElementById('discountPercentage').style.display = 'block';
                document.getElementById('courseDiscountAmount').value = '';
            }
        }

        function deleteEvent(id) {

            var confirmation = confirm("Are you sure you want to delete this user?");
            if (confirmation) {
                $.ajax({
                    type: 'GET',
                    url: "/admin/course-discount/delete/" + id,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    // data:{user_id: userId},
                    success: function(data) {
                        toastr.success("Course Discount Info Deleted successfully");
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

                var formData = new FormData(this);
                length_array = [formData.get('courseTitle').length, formData.get('courseDiscountStart')
                    .length, formData.get('courseDiscountEnd').length
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
                        url: '/admin/course-discount/create',
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

                            var courseTitle = document.querySelector(
                                '#courseTitle option:checked').text;
                            console.log("ABC");
                            // ITERATING THROUGH OBJECTS
                            $.each(response, function(key, value) {
                                //CONSTRUCTION OF ROWS HAVING
                                // DATA FROM JSON OBJECT
                                student = '<tr id="row' + response[key]["id"] + '">';
                                student += '<td>' +
                                    response.length + '</td>';

                                student += '<td>' +
                                    courseTitle + '</td>';

                                student += '<td>' +
                                    response[key]["course_discount_start"] + '</td>';

                                student += '<td>' +
                                    response[key]["course_discount_end"] + '</td>';

                                student += '<td>' +
                                    response[key]["course_discount_amount"] + '</td>';

                                student += '<td>' +
                                    response[key]["course_discount_percentage"] + '</td>';
                                // student +=
                                //     '<td><a href="' + editUrl +
                                //     '"class="edit btn btn-primary">Edit</a></td>';

                                student +=
                                    '<td><a href="javascript:void(0);" class="delete btn btn-danger" onclick="deleteEvent(' +
                                    response[key]['id'] + ')">Delete</a></td>';

                                student += '</tr>';

                            });
                            $('#showPost').append(student);

                            $('#courseTitle').val('');
                            document.getElementById('courseDiscountStart').value = '';
                            document.getElementById('courseDiscountEnd').value = '';
                            document.getElementById('courseDiscountAmount').value = '';
                            document.getElementById('courseDiscountPercentage').value = '';
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
    </script> --}}
@endpush

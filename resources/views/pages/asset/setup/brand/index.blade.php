@extends('layouts.app')

@section('title', 'Asset Management - Brand')
@push('third_party_stylesheets')
    <link href="{{ asset('assets/js/DataTable/datatables.min.css') }}" rel="stylesheet">
@endpush
@section('content')
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <span class="float-left">
                            <h4>Brand</h4>
                        </span>
                        <span class="float-right">
                            @if (Auth::user()->can('add asset-brand') || Auth::user()->role->id == 1)
                                <a href="{{ route('asset.setup.brand.create') }}" class="btn btn-info">Add new brand</a>
                            @endif
                        </span>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped text-center" id="table">
                            <thead>
                                <tr>
                                    <th>SL.</th>
                                    <th>Logo</th>
                                    <th>Name</th>
                                    <th>Status</th>
                                    <th>Created By</th>
                                    <th>Created At</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($brands as $key => $brand)
                                    <tr>
                                        <td>{{ $key + 1 }}</td>
                                        <td><img src="{{ $brand->getFirstMediaUrl('asset-brand-img', 'thumb') }}"
                                                width="120px" alt="{{ $brand->name }}"></td>
                                        <td>{{ $brand->name }}</td>
                                        <td>{{ $brand->status }}</td>
                                        <td>{{ $brand->created_user->name }}</td>
                                        <td>{{ date('d-m-Y', strtotime($brand->created_user->created_at)) }}</td>
                                        <td>
                                            <div class="btn-group">
                                                <a href="javascript:void(0)" class="btn btn-info btnView"
                                                    data-id="{{ $brand->id }}"><i class="fas fa-eye"></i></a>
                                                @if (Auth::user()->can('edit brand') || Auth::user()->role->id == 1)
                                                    <a href="{{ route('asset.setup.brand.edit', $brand->id) }}"
                                                        class="btn btn-dark btnEdit"><i class="fas fa-edit"></i></a>
                                                @endif
                                                @if (Auth::user()->can('delete brand') || Auth::user()->role->id == 1)
                                                    <a href="{{ route('asset.setup.brand.destroy', $brand->id) }}"
                                                        class="btn btn-danger btnDelete"><i class="fas fa-trash"></i></a>
                                                @endif
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Modals --}}
    <div class="modal fade" id="view-modal">
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
    </div>
@endsection
@push('third_party_scripts')
    <script src="{{ asset('assets/js/DataTable/datatables.min.js') }}"></script>
@endpush

@push('page_scripts')
    <script>
        $(document).ready(function() {
            $('#table').DataTable({
                dom: 'Bfrtip',
                buttons: [{
                    extend: 'pdfHtml5',
                    title: 'Brands',
                    download: 'open',
                    orientation: 'potrait',
                    pagesize: 'LETTER',
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5]
                    }
                }, {
                    extend: 'print',
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5]
                    }
                }, 'pageLength']
            });
            //view-modal
            $('.btnView').click(function() {
                if ($(this).data('id') != null || $(this).data('id') != '') {
                    let url = ("{{ route('asset.setup.brand.show', ['id']) }}");
                    let _url = url.replace('id', $(this).data('id'));
                    $.ajax({
                        url: _url,
                        method: "GET",
                        success: function(response) {
                            $('#view-img').html(response.img);
                            $('#view-name').html(response.name);
                            $('#view-status').html(response.status);
                            $('#view-createdAt').html(response.created_at ? new Date(response
                                .created_at) : '');
                            $('#view-createdBy').html(response.created_user ? response
                                .created_user.name : 'system');
                            $('#view-updatedAt').html(response.updated_at ? new Date(response
                                .updated_at) : '');
                            $('#view-updatedBy').html(response.updated_user ? response
                                .updated_user.name : '');
                            $('#view-modal').modal('show');
                        }
                    });
                } else {
                    alart('Something went wrong');
                }
            });
        });
    </script>
@endpush

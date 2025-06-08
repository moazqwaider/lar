@extends('admin.app')
@section('title','All Categories')

@section('css')

<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
@stop

@section('js')

<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js">

</script>
<script>
    let table = new DataTable('#myTable');
</script>
@stop

@section('content')


<div class="row">
    <div class="col-12">
        <div class="top-campaign">
            @if(session('msg'))
            <div class="alert alert-{{session('type')}} alert-dismissible fade show" role="alert">
                {{session('msg')}}

                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              @endif
            <h3 class="title-3 m-b-30">All categories</h3>
            <div class="table-responsive">
                <table id="myTable" class="table table-top-campaign">
                    <thead>



                        <a href="{{ route('admin.generatePDF') }}" class="btn btn-primary mb-2 ">  PDF</a>

                        <tr>
                            <th>ID</th>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Parent</th>
                            <th>Services Count</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($categories as $categoy )

                        <tr>

                            <td>{{$categoy->id}}</td>
                            <td>


                                        <img width="60" src="{{ asset($categoy->image->path) }}" alt="">


                                </td>
                            <td>{{$categoy->name_trans}}</td>
                            <td>{{$categoy->parent->name_trans}}</td>
                            <td>{{$categoy->services_count}}</td>
                            <td style="text-align: unset">
                                <a class="btn btn-primary btn-sm" href="{{ route('admin.categories.edit', $id) }}"><i class="fas fa-edit"></i></a>
                                <form class="d-inline" action="{{ route('admin.categories.destroy', $categoy) }}" method="POST">
                                    @csrf
                                    @method('delete')
                                    <button onclick="return confirm('Are you sure')" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></button>
                                </form>
                            </td>
                        @empty
                        <tr>
                            <td colspan="6">
                               No Data Found
                            </td>
                        </tr>

                        @endforelse







                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>

@endsection


@extends("company.maser")

@extends("company.heeder")
@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">


    <div class="bg-light p-4 rounded">
<div class="bg-light p-4 rounded">
    <h2>Permissions</h2>
    <div class="lead">
        Manage your permissions here.


         @can('permission..create')
        <a href="{{ route('permissions.create') }}" class="btn btn-primary btn-sm float-right">Add permissions</a>
        @endcan
    </div>

    <div class="mt-2">
        @if($message =Session::get('Success'))
            <div class="alert alert-success" >
             <p>{{$message }}</p>
            </div>
         @endif
    </div>

    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col" width="15%">Name</th>
            <th scope="col">Guard</th>
            <th scope="col" colspan="3" width="1%"></th>
        </tr>
        </thead>
        <tbody>
            @foreach($permissions as $permission)
                <tr>
                    <td>{{ $permission->name }}</td>
                    <td>{{ $permission->guard_name }}</td>


                    @can('permission..adit')
                    <td><a href="{{ route('permissions.edit', $permission->id) }}" class="btn btn-info btn-sm">Edit</a>
                        @endcan
                    </td>
                    <td>
                        @can('permission..delete')

                        {!! Form::open(['method' => 'DELETE','route' => ['permissions.destroy', $permission->id],'style'=>'display:inline']) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-sm']) !!}
                        {!! Form::close() !!}
                        @endcan
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

</div>
















@endsection

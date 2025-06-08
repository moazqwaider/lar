@extends("company.maser")

@extends("company.heeder")
@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">


    <div class="bg-light p-4 rounded">
<div class="bg-light p-4 rounded">
    <h2>circle</h2>
    <div class="lead">
        Manage your circle here.



        <a href="{{ route('circle.create') }}" class="btn btn-primary btn-sm float-right">Add circle</a>

    </div>

    <div class="mt-2">
        @if($message =Session::get('Success'))
            <div class="alert alert-success" >
             <p>{{$message}}</p>
            </div>
         @endif
    </div>

    <table class="table table-striped">
        <thead>
        <tr>

            <th scope="col" width="15%">circle_name</th>
            <th scope="col">count</th>
            <th scope="col" colspan="3" width="1%"></th>
        </tr>
        </thead>
        <tbody>
            @foreach($circle as $permission)
                <tr>
                    <td>{{$permission->circle_name }}</td>

                    <td>{{$permission->court_name}}</td>


                 <td >


                    {!! Form::open(['method' => 'DELETE','route' => ['circle.destroy', $permission->id],'style'=>'display:inline']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-sm']) !!}
                    {!! Form::close() !!}

                    </a>
                </td>
            </tr>





            @endforeach
        </tbody>
    </table>

</div>
















@endsection

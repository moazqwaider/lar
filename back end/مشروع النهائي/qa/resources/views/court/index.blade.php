@extends('company.maser')
@extends('company.heeder')
@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">


    <div class="bg-light p-4 rounded">
<div class="bg-light p-4 rounded">
    <h2>courts	</h2>
    <div class="lead">
        Manage your courts	 here.



        <a href="{{ route('court.create') }}" class="btn btn-primary btn-sm float-right">Add courts	</a>

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

            <th scope="col" width="15%">court_name</th>
            <th scope="col">courts</th>

            <th scope="col" colspan="3" width="1%"></th>
        </tr>
        </thead>
        <tbody>
            @foreach($court as $permission)
                <tr>
                    <td>{{ $permission->court_name }}</td>
                    <td>{{ $permission->courts}}</td>


                 <td class="project-actions text-right">


                        </i>

                    </a>
            <a>
                    {!! Form::open(['method' => 'DELETE','route' => ['court.destroy', $permission->id],'style'=>'display:inline']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-sm']) !!}
                    {!! Form::close() !!}
                      </a>

                    </a>
                </td>
            </tr>





            @endforeach
        </tbody>
    </table>

</div>
















@endsection

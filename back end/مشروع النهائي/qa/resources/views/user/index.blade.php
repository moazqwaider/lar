
  @extends("company.maser")

  @extends("company.heeder")
  @section('container')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>users</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">users</li>

              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">

        <!-- Default box -->
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">users</h3>
            <h3 class="card-title" >عرض جميع الشركات التابعين لنفس المكتب الحالي</h3>

            @can('employee..create')
            <a href="{{ route('user.create') }}" class="btn btn-primary btn-sm float-right">Add user</a>
            @endcan

            @if($message =Session::get('Success'))
               <div class="alert alert-success" >
                <p>{{$message }}</p>
               </div>
            @endif
          </div>

          <div class="card-body p-0">


            <table class="table table-striped projects">

        <!-- /.card-header -->
        <div class="card-body table-responsive p-0" >
          <table class="table table-head-fixed text-nowrap">
            <thead>
              <tr>
                <th>{{__('ID')}}</th>
                <th>{{__('name')}}</th>
                <th >{{__('Email')}}</th>

              </tr>
            </thead>
            <tbody>
                @foreach ($user as $u )

              <tr>
                <td>{{$u->id}}</td>
                <td>{{$u->name}}</td>
                <td>{{$u->email}}</td>
                <td>
                  @can("employee..list")

                <a  href="{{route('user.show',$u->id)}}" class="btn btn-primary btn" >
                    <i class="fas fa-folder">
                        Views
                    </i>


                </a>
                @endcan
                @can("employee..delete")
                <a   class="btn btn-danger" href="{{route('user.destroy',$u->id)}}" >
                    <i class="fas fa-trash">
                        deltet
                    </i>

                </a>
                @endcan
                 @can('employee..adit')


                <a   class="btn btn-danger" href="{{route('user.edit',$u->id)}}" >
                    <i class="fas fa-trash">
                        edit
                    </i>

                </a>
                @endcan

            </td>
              </tr>
              @endforeach

            </tbody>
          </table>


      </div>


  @endsection

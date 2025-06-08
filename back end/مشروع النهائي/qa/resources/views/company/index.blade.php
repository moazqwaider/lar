@extends("company.maser")
@extends("company.heeder")
@section('container')
  <!-- Content Wrapper. Contains page content -->
  <div  class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Employees</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Employees</li>
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

          <h3 class="card-title" >عرض جميع الشركات التابعين لنفس المكتب الحالي</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="bg-light p-4 rounded">
            <h1>Employees</h1>
            <div class="lead">
                Manage your roles here.
                <a href="{{ route('company.create') }}" class="btn btn-primary btn-sm float-right">Add Employees</a>
            </div>
        <div class="card-body p-0">
          <table class="table table-striped projects">
              <thead>
                  <tr>
                      <th style="width: 10%">
                          #
                      </th>
                      <th style="width: 10%">
                        owmer_id
                      </th>
                      <th style="width: 15%">
                        Employees Name
                      </th>
                      <th style="width: 15%">
                        Employees phone
                      </th>
                      <th style="width: 15%">
                        Employees adderss
                      </th>
                      <th style="width: 10%" class="text-center">
                        image
                    </th>
                      <th style="width: 30%" class="text-center">

                      </th>

                  </tr>
              </thead>
              <tbody>
                @foreach ($company as $com )
                  <tr>
                      <td>                          <span class="badge badge-success"> {{$loop->iteration}}</span>


                      </td>
                      <td>
                          <a>
                            {{$com->owner_id}}
                          </a>
                          <br/>
                          <small>


                          </small>
                      </td>
                      <td>
                        {{$com->company_name}}
                      </td>
                      <td class="project_progress">

                          </div>
                          <small>
                            {{$com->company_phone}}
                          </small>
                      </td>
                      <td class="project-state">

                          {{$com->company_address}}
                      </td>
                      <td class="project-state">

                     <img src=" {{$com->image}}">
                    </td>
                      <td class="project-actions text-right">
                          <a class="btn btn-primary btn" href="{{route('company.show',$com)}}">
                              <i class="fas fa-folder">
                              </i>
                              View
                          </a>
                          <a class="btn btn-info btn" href="#">
                              <i class="fas fa-pencil-alt">
                              </i>
                              Edit
                          </a>

                              <a  class="btn btn-danger" href="{{route('company.destroy',$com)}}">
                                <i class="fas fa-trash">
                                </i>
                                Delete
                              </a>

                          </a>
                      </td>
                  </tr>

              </tbody>
              @endforeach
            </table>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div >
  <!-- /.content-wrapper -->


@endsection

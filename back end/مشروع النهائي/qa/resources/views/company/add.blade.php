<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Company Add</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->

  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
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
            <h1>company Add</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">company  Add</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <form  action={{route('company.store')}}>
      <div class="row">
        <div class="col-md-12">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">add company</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>

            <div class="card-body">
                <form action="company.store">

                    <div class="form-group">

                        <label for="inputName">owner_id</label>
                        <input type="number" name="owner_id" id="inputName" class="form-control">
                      </div>
              <div class="form-group">

                <label for="inputName">Company Name</label>
                <input type="text" name="company_name" id="inputName" class="form-control">
              </div>
              <div class="form-group">
                <label for="inputDescription">Company Phone</label>
                <textarea id="inputDescription" name="company_phone" class="form-control" rows="4"></textarea>
              </div>

              <div class="form-group">
                <label for="inputClientCompany">company Address</label>
                <input type="text" id="inputClientCompany"name="company_address" class="form-control">
              </div>
              <div class="form-group">
                <label for="inputProjectLeader">image</label>
                <input type="file" id="inputProjectLeader" name="image" class="form-control">
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>

      </div>
      <div class="row">
        <div class="col-12">
          <a href="#" class="btn btn-secondary">Cancel</a>
          <input type="submit" value="Create new company" class="btn btn-success float-right">
        </div>
      </div>
    </form>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  @endsection




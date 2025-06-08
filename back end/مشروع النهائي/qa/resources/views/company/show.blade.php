@extends("company.maser")

@extends("company.heeder")
@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">

    <div class="bg-light p-4 rounded">
        <h1>Show user</h1>
        <div class="lead">

        </div>

        <div class="container mt-4">
            <div>
                Name: {{ $company->company_name }}
            </div>
            <div>
                Phone: {{ $company->company_phone }}
            </div>
            <div>
                Address: {{ $company->company_address }}
            </div>
            

        </div>

    </div>
    <div class="mt-4">
        <a href="{{ route('user.index') }}" class="btn btn-default">Back</a>
    </div>
@endsection

@extends("company.maser")

@extends("company.heeder")
@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">

    <div class="bg-light p-4 rounded">
        <h1>Show circle</h1>
        <div class="lead">

        </div>

        <div class="container mt-4">
            <div>
                circle_name: {{ $circle->circle_name }}
            </div>
            <div>
                company_id: {{ $circle->company_id }}
            </div>
            <div>
                count_id: {{ $circle->count_id}}
            </div>
            <div>
                count: {{ $circle->count_id}}
            </div>


        </div>

    </div>
    <div class="mt-4">
        <a href="{{ route('circle.index') }}" class="btn btn-default">Back</a>
    </div>
@endsection

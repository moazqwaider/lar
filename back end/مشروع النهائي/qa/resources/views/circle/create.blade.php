
@extends("company.maser")

@extends("company.heeder")
@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">

<div class="bg-light p-4 rounded">
    <h1>Add new role</h1>
    <div class="lead">
        Add new role and assign permissions.
    </div>

    <div class="container mt-4">

        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
        @endif

        <form method="POST" action="{{ route('circle.store') }}">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Name Circle</label>
                <input value="{{ old('name') }}"
                    class="form-control"
                    name="circle_name"
                    placeholder="Name Circle" required>
            </div>



            <div >
                <label for="inputStatus"> court name</label>
                <select id="inputStatus" class="form-control custom-select" name="court_name">
                    <option selected disabled   >
                                 <label for="inputStatus"> court name</label>
                    </option>
                    @foreach ($court as $category )

                <option >{{$category->court_name}}</option>
                @endforeach


                </select>
              </div>


                        </div>


                  </tr>



            <button type="submit" class="btn btn-primary">Save user</button>
            <a href="{{ route('circle.index') }}" class="btn btn-default">Back</a>
        </form>
    </div>

</div>
@endsection

@section('scripts')
<script type="text/javascript">
    $(document).ready(function() {
        $('[name="all_permission"]').on('click', function() {

            if($(this).is(':checked')) {
                $.each($('.permission'), function() {
                    $(this).prop('checked',true);
                });
            } else {
                $.each($('.permission'), function() {
                    $(this).prop('checked',false);
                });
            }

        });
    });
</script>
@endsection

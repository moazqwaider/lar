
@extends("company.maser")

@extends("company.heeder")
@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">

<div class="bg-light p-4 rounded">
    <h1>Add new count</h1>
    <div class="lead">
        Add new count and assign permissions.
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

        <form method="POST" action="{{ route('court.store') }}">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label"> Count Name</label>
                <input value="{{ old('court_name') }}"

                    class="form-control"
                    name="court_name"
                    placeholder="court_name" required>
            </div>
            



                            <div >
                                <label for="inputStatus"> country name</label>
                                <select id="inputStatus" class="form-control custom-select" name="courts">
                                    <option selected disabled>country </option>
                                    @foreach ($country as $category )

                                <option  value="{{$category->name}}">{{$category->name}}</option>
                                @endforeach


                                </select>
                              </div>


                        </div>


                  </tr>



            <button type="submit" class="btn btn-primary">Save user</button>
            <a href="{{ route('court.index') }}" class="btn btn-default">Back</a>
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

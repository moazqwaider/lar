<!DOCTYPE html>
<html>
<head>
    <title>Laravel 10 Generate PDF Example - ItSolutionStuff.com</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Image</th>
            <th>Name</th>
            <th>Parent</th>
            <th>Services Count</th>
        </tr>

        @foreach($category as $categorys)
        <tr>
            <td>{{ $categorys->id }}</td>

                <td> </td>
            <td>{{ $categorys->name_trans }}</td>
            <td>{{ $categorys->parent->name_trans }}</td>
            <td>{{ $categorys->services_count }}</td>
        </tr>
        @endforeach

    </table>

</body>
</html>

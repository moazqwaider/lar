<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />


  </head>
  <body>
      <div class="container my-5">
              <div class="d-flex align-items-center justify-content-between">
                <h2>All Courses</h2>
                <a class="btn btn-dark" href="{{ route('courses.create')}}">
                <i class="fas fa-plus"></i> Add New Course</a>

              </div>
         <table class="table">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Image</th>
                <th>Instructor</th>
                <th>Hours</th>
                <th>created At</th>
                <th>Actions </th>

            </tr>
            @php
            if($courses->currentPage()==1){
                $i=1;
            }else{
                $i=(($courses->currentPage()-1)*
                $courses->perPage()+1);
            }


            @endphp
            <tr>

                @foreach ($courses as $course )
                <td>{{$i++}}</td>
                <td>{{$course->name}}</td>

            @php
                $path= public_path('images/'.$course->image);
                if(file_exists($path))
                {
                     $path=asset('images/'.$course->image);
                }else{
                    $path=asset('images/No_Image.jpg');
                }
            @endphp
                <td><img width="50px" src="{{$path}}" ></td>
                <td>{{$course->instructor}}</td>
                <td>{{$course->hours}}</td>
                <td>{{$course->created_at}}</td>

                <td>
                   <div class="btn-group" role="group" aria-label="Basic example">
                    <a href="{{route('courses.show',$course->slug)}}" class="btn btn-primary btn-sm">

                        <i class="fas fa-eye"></i>

                    </a>
                    <a href="{{route('courses.edit',$course->slug)}}" class="btn btn-success btn-sm"><i class="fas fa-edit"></i>
                    </a>
                    <form action="{{ route('courses.destroy',$course->id)}}" method="POST">
                        @csrf
                        @method('delete')
                            <button onclick="return confirm('Are you sure?')"

                            style="border-top-left-radius: 0 !important;border-bottom-left-radius: 0 !important;"
                              class="btn btn-danger btn-sm">

                     <i class="fas fa-trash "></i>
                            </button>
                    </form>
                   </div>
                </td>


            </tr>
            @endforeach
         </table>
         {{ $courses->links()}}
      </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" ></script>
  </body>
</html>

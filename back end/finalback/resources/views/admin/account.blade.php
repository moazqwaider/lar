@extends('admin.app')
@section('title','Dashboard')

@section('content')
@section('css')
<style>
    img#profile-pic {
        width: 200px;
        height: 200px;
        border-radius: 50%;
        border: 1px dashed #979797;
        padding: 4px;
    }
</style>
@stop
<div class="row">
    <div class="col-12">
        <div class="top-campaign">
            <h3 class="title-3 m-b-30">Edit your account</h3>
            @if (session('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{session('success')}}
                <button type="button" class="close" data-dismiss= "alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
            @endif

            <form action="{{route('admin.account_update')}} "method="POST" enctype="multipart/form-data">
                 @csrf
                 @method('put')
                 <div class="row">
                    <div class="col-md-3">
                        <label for="image">
                            <img id="profile-pic" src="{{asset(Auth::user()->pic)}}" alt="" />
                        </label>

                        <input id="image" type="file" name="image" class="d-none" onchange="readURL(this);">
                    </div>




                    <div class="col-md-9">
                        <div class="mb-3">
                            <label for="name"> Name</label>
                            <input type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror"
                            value={{ old('name', Auth::user()->name)}}
                            >
                            @error(('name'))
                               <small class="invalid-feedback">{{$message}}</small>
                            @enderror
                         </div>
                         <div class="mb-3">
                            <label for="email">Email</label>
                            <input disabled type="text" name="email" id="email" class="form-control @error('email') is-invalid @enderror"
                            value={{old('email',Auth::user()->email
                     )}}
                            >
                            @error(('email'))
                               <small class="invalid-feedback">{{$message}}</small>
                            @enderror
                         </div>




                        <div class="password-wrapper"
                         @if(!session('err_old') && !$errors->has('password')) d-none @endif >

                            <div class="mb-3">
                                <label for="old_password">Old Password</label>
                                <input  type="password" name="old_password" id="old_password" class="form-control
                                @error('old_password') is-invalid @enderror"
                                >
                                @error(('old_password'))
                                   <small class="invalid-feedback">{{$message}}</small>
                                @enderror
                                    @if (session('err_old'))
                                        <small class="text-danger">{{session('err_old') }}</small>


                                    @endif



                             </div>

                        </div>
                         <div class="mb-3">
                            <label for="password"> New Password</label>
                            <input  type="password" name="password" id="password" class="form-control @error('password') is-invalid @enderror"
                            >
                            @error(('password'))
                               <small class="invalid-feedback">{{$message}}</small>
                            @enderror
                         </div>
                         <div class="mb-3">
                            <label for="password_confirmation"> Password confirmatio</label>
                            <input  type="password" name="password_confirmation" id="password_confirmation" class="form-control"
                            >

                         </div>
                         <button class="btn btn-success" action="">Update</button>
                    </div>

                 </div>



            </form>
        </div>
    </div>
</div>

@endsection

@section('js')
<script>
    function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
      $('#profile-pic').attr('src', e.target.result);
    };

    reader.readAsDataURL(input.files[0]);
  }
}
</script>
@stop

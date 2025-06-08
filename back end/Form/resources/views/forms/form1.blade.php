@extends('forms.bootstrap')
@section('contact')
<div class="container my-5">
    <h2>Basic Form</h2>

    <form action="{{route('forms.form1')}}" method="POST">
        @csrf
        <div class="mb-3">
            <label>Name</label>
            <input type="text" placeholder="Name" class="form-control   @error('name') is-invalid
            @enderror" name="name" value="{{old('name')}}">
            @error('name')
            <small class="invalid-feedback">{{$message}}</small>
            @enderror
        </div>
        <div class="mb-3">
            <label>Email</label>
            <input type="email" placeholder="Email" class="form-control @error('name') is-invalid
            @enderror" name="email" value="{{old('name')}}">
            @error('email')
            <small class="invalid-feedback">{{$message}}</small>
            @enderror
        </div>
        <div class="mb-3">
            <label>Bio</label>
            <textarea name="bio" class="form-control  @error('bio') is-invalid
            @enderror" placeholder="Bio" rows='4'>
            {{old('bio')}}</textarea>
            @error('bio')
            <small class="invalid-feedback">{{$message}}</small>
            @enderror
        </div>

        <button class="btn btn-success px-5">Send</button>
    </form>
</div>
@endsection

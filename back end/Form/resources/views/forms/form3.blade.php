@extends('forms.bootstrap')
@section('css')
<style>
     .rokect svg{
              animation: rocket 1.3s ease infinite ;
     }
     @keyframes rocket{
         from{
            transform: translate(-3px,3px)
         } to{
            transform: translate(20px,-30px)
         }
     }
</style>
@endsection
@section('contact')


    <form action="{{ route('forms.form3')}}"method="POST" enctype="multipart/form-data">
        @csrf
        <div class="container my-5">
        <h1>Upload  Form</h1>

             <div class="mb-3">

             <input type="text" placeholder="Name" class="form-control   @error('name') is-invalid
            @enderror" name="name" value="{{old('name')}}">
            @error('name')
            <small class="invalid-feedback">{{$message}}</small>
            @enderror


             </div>


         <div class="mb-3">
            <label>Image</label>
            <input type="file" class="form-control   @error('image') is-invalid
            @enderror" name="image" value="{{old('image')}}">
            @error('image')
            <small class="invalid-feedback">{{$message}}</small>
            @enderror
         </div>




             <button type="button" class="btn btn-dark px-5 ">
             <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
            <path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z"/>
            </svg>
             send</button>
    </form>
</div>
@endsection

@section('title')
form3
@endsection

@section('js')

<script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/6.6.0/tinymce.min.js"></script>
<script>
        tinymce.init({
            selector:'.tiny'
        })
         let but= document.querySelector('button');
         let form= document.querySelector('form');

         but.onclick=()=>{
            but.classList.add('rokect');
            setTimeout(() => {
                form.submit();
            }, 700);
        }
</script>
@stop

@props(['text','name','options','placeholder'])

<div class="mb-3">

    <label>{{$text}}</label>
    <select value=
    "{$value}" class="form-select
        @error($name) is-invalid
    @enderror" name="{{$name}}" >
    @isset($placeholder)
       <option value="" disabled selected hidden>
            {{$placeholder}}
       </option>

    @endisset

    @foreach ($options as $key=> $options )

       <option @selected(old($name)==$key) value="{{$key}}">
        {{$options}}

       </option>

    @endforeach

</select>

    @error($name)
    <small class="invalid-feedback">{{$message}}</small>
    @enderror
        </div>

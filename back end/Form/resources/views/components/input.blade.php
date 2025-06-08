@props(['text','type','name'])

<div class="mb-3">

            <label>{{$text}}</label>
            <input type="{{$type}}"
            placeholder="{{$text}}"
            class="form-control
             @error('name') is-invalid
            @enderror" name="{{$name}}"
            value="{{old($name)}}">
            @error($name)
            <small class="invalid-feedback">{{$message}}</small>
            @enderror
        </div>

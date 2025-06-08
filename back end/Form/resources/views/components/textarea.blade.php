@props(['text','class','name'])

<div class="mb-3">

            <label>{{$text}}</label>
            <textarea class="{{$class}}"

            placeholder="{{ $text }}" rows="4"
            class="form-control
             @error('name') is-invalid
            @enderror" name="{{$text}}"
          >
          {{old($name)}}
            </textarea>




            @error($name)
            <small class="invalid-feedback">{{$message}}</small>
            @enderror
        </div>

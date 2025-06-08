<div class="row">



     <div class="col-md-12">
        <div class="mb-3">
           <label for="name">Name</label>
           <input type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror"
           value={{old('name',$role->
           name)}}
           >
           @error(('name'))
              <small class="invalid-feedback">{{$message}}</small>
           @enderror
        </div>


     </div>




     <div class="col-md-12">
        <div class="mb-3">
           <label for="name">Permissions</label>
           <ul style="column-count:2 " class="list-unstyled">

                @foreach ($permissions as $permission )
                <li>
                <label>
                    <input @checked($role->permissions->find($permission->id)) type="checkbox" name="Permissions[]" value="{{$permission->id}}" >
                    {{$permission->name}}
                </label>
            </li>
            @endforeach
           </ul>


        </div>


     </div>








</div>

@extends("company.maser")

@extends("company.heeder")
@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="bg-light p-4 rounded">
        <h1>Update user</h1>
        <div class="lead">

        </div>

        <div class="container mt-4">
            <form method="post" action="{{ route('user.update', $user->id) }}">
                @method('patch')
                @csrf
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input value="{{$user->name }}"
                        type="text"
                        class="form-control"
                        name="name"
                        placeholder="Name" required>

                    @if ($errors->has('name'))
                        <span class="text-danger text-left">{{ $errors->first('name') }}</span>
                    @endif
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input value="{{$user->email }}"
                        type="email"
                        class="form-control"
                        name="email"
                        placeholder="Email address" required>
                    @if ($errors->has('email'))
                        <span class="text-danger text-left">{{ $errors->first('email') }}</span>
                    @endif
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">password</label>
                    <input value="{{$user->username }}"
                        type="password"
                        class="form-control"
                        name="password"
                        placeholder="password" required>
                    @if ($errors->has('password'))
                        <span class="text-danger text-left">{{ $errors->first('password') }}</span>
                    @endif
                </div>
                {{-- <div class="mb-3">
                    <label for="role" class="form-label">Role</label>
                    {{-- <select class="form-control"
                        name="role" required>
                        <option value="">Select role</option>
                        @foreach($user as $role)
                            <option value="{{$user->id }}"
                                {{ in_array($user->name, $userRole)
                                    ? 'selected'
                                    : '' }}>{{ $user->name }}</option>
                        @endforeach --}}

                    {{-- @if ($errors->has('role'))
                        <span class="text-danger text-left">{{ $errors->first('role') }}</span>
                    @endif --}}
                {{-- </div> --}}

                <button type="submit" class="btn btn-primary">Update user</button>
                <a href="{{ route('user.index') }}" class="btn btn-default">Cancel</button>
            </form>
        </div>

    </div>
</select>
@endsection

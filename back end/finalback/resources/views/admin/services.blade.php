@extends('admin.app')
@section('title','All Services')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="top-campaign">
            <h3 class="title-3 m-b-30">All Services</h3>
            <div class="table-responsive">
                <table class="table table-top-campaign">
                    <tbody>
                        <tr>
                            <th>ID</th>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Category</th>
                            <th>User</th>

                        </tr>

                        <tr>
                            @forelse ($services as $service )
                             <td>{{$service->id}}</td>

                            <td>
                                @if ($service->image)
                                <img width="80" src="{{ asset($service->image->path) }}" alt="">
                            @endif

                            </td>
                            <td>{{$service->name}}</td>
                            <td>{{$service->price}}</td>
                            <td>{{$service->category->name_trans}}</td>
                            <td>{{$service->user->name }}</td>

                           @empty
                           <td class="text-center" colspan="5">
                            No Data Found
                         </td>

                            @endforelse
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection


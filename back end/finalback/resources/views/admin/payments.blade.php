@extends('admin.app')
@section('title','Payments')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="top-campaign">
            <h3 class="title-3 m-b-30">All Payments</h3>
            <div class="table-responsive">
                <table class="table table-top-campaign">
                    <tbody>
                        <tr>
                            <th>ID</th>
                            <th>User</th>
                            <th>Total</th>
                            <th>status</th>
                            <th>TransactionID</th>
                            <th>Created At</th>


                        </tr>
                        <tr>

                            @forelse ($payments as $payment )

                            <td>{{$payment->id}}</td>
                            <td>{{$payment->user->name}}</td>
                            <td>{{$payment->total}}</td>
                            <td>{{$payment->status}}</td>
                            <td>{{$payment->transaction_id}}</td>
                            

                           <td>{{$payment->created_at->format('d-m-y h:m:s a ')}}</td>
                           <td>


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


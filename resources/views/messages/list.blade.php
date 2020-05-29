@extends('layouts.base')
@section('title', 'Message List')
@section('content')
<div class="container">
    <h3>Your Messages</h3><hr>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Date</th>
                <th>From</th>
    
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @forelse($messages as $message)
                <tr>
                    <td>{{$message->created_at}}</td>
                    <td>
                        @if($message->read==0)
                            <b>{{$message->sender->full_name . __(' - ') . $message->sender->phone}}</b>
                        @else
                            {{$message->sender->full_name . __(' - ') . $message->sender->phone}}
                        @endif
                    </td>
                    <td>{{$message->read==1 ? 'Read' : 'Unread'}}</td>
                    <td>
                        <div class="btn-group" role="group">
                            <a href="{{route('read-message', $message->id)}}" class="btn btn-success btn-sm">Read</a>                            
                        </div>
                    </td>
                </tr>
            @empty
            <tr>
                <td colspan="4"><p class="text-center">You have no messages. <br><a href="{{route('post-ad-form')}}" class="btn btn-success">Post Ad</a></p></td>
            </tr>
            @endforelse
        </tbody>
    </table>
    <hr>
    {{$messages->links()}}
    <hr>
</div>

<script src="{{asset('/js/jquery.min.js')}}"></script>
<script src="{{asset('/js/bootstrap.min.js')}}"></script>
@endsection

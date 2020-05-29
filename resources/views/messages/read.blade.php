@extends('layouts.base')
@section('title', 'Read Message')
@section('content')
<div class="container">
    <a href="{{route('message-list')}}" class="btn btn-info">&laquo; Back to Inbox</a>
    <hr>
    <h3>Read Message</h3><hr>
    <p><strong>From: {{$message->sender->full_name}}</strong></p>
    <p><strong>Sender Phone: {{$message->sender->phone}}</strong></p>
    <hr>
    <p>
        {{nl2br($message->body)}}
    </p>
    <hr><br>
        <div class="row">
            <div class="col-md-8">
                <h4>Reply</h5>
                <br>
                @include('partials.partials')
                <form method="post" action="{{route('send-message')}}">
                    @csrf
                    <input type="hidden" name="user" value="{{$message->sender->id}}">
                    <div class="form-group">
                        <textarea required name="message" rows="10" class="form-control">{{old('message')}}</textarea>
                    </div>
                    <button type="submit" class="btn btn-block btn-success"><i class="fa fa-send"></i>&nbsp;Reply</button>
                </form>
            </div>
        </div>
    <hr>
</div>

<script src="{{asset('/js/jquery.min.js')}}"></script>
<script src="{{asset('/js/bootstrap.min.js')}}"></script>
@endsection

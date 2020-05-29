@extends('layouts.base')
@section('title', $product->title)
@section('content')
@include("layouts.banner")

<div class="single-page main-grid-border">
  <div class="container">
    <ol class="breadcrumb" style="margin-bottom: 5px;">
      <li><a href="{{url('/')}}">Home</a></li>
      <li><a href="{{url('classified/all')}}">All Ads</a></li>
      <li class="active">{{$product->title}}</li>
    </ol>
    <div class="product-desc">
      <div class="col-md-7 product-view">
        <h2>{{$product->title}}</h2>
        <p> <i class="glyphicon glyphicon-map-marker"></i>
            <a href="#">{{$product->region->state->state}}</a>,
            <a href="#">{{$product->region->local_govt}}</a>| Added at {{$product->created_at}}, Ad ID: {{$product->id}}</p>
        <div class="flexslider slides">
          <ul class="slides">
            @foreach(json_decode($product->product_image) as $image)
            <li data-thumb="{{asset('uploads/'.$image)}}"> <img src="{{asset('uploads/'.$image)}}" /> </li>
            @endforeach
          </ul>
        </div>
        <!-- //FlexSlider -->
        <div class="product-details">
          <h4>Brand : <a href="#">{{$product->title}}</a></h4>
          <h4>Views : <strong>{{$product->views}}</strong></h4>
          <p><strong>Summary</strong> : {!! $product->summary !!}</p>
        </div>
      </div>
      <div class="col-md-5 product-details-grid">
        <div class="item-price">
          <div class="product-price">
            <p class="p-price">Price</p>
            <h3 class="rate">₦{{number_format($product->price)}}</h3>
            <div class="clearfix"></div>
          </div>
          <div class="condition">
            <p class="p-price">Condition</p>
            <h4>Fairly used</h4>
            <div class="clearfix"></div>
          </div>
          <div class="itemtype">
            <p class="p-price">Item Type</p>
            <h4>{{$product->category->title}}</h4>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="interested text-center">
          <h4>Interested in this Ad?<small> Contact the Seller!</small></h4>
          <p><i class="glyphicon glyphicon-earphone"></i>{{$product->user->phone}}</p>

          @auth
          @if(auth()->id() !== $product->user->id)
            @include('partials.partials')
            <br>              
            <div class="post-ad-form">            
            <form action="{{route('send-message')}}" method="post">
              @csrf
                  <input type="hidden" name="user" value="{{$product->user->id}}">
                  <textarea                 
                  name="message" class="" style="width: 100%;" placeholder="Send a message to the seller">{{old('message')}}</textarea>   
                  <button class="btn btn-success" type="submit"><i class="fa fa-send"></i> Send a message to the seller</button>    
            </form>
            
           </div>    
           @endif
           @else
            <br>
            <a class="btn btn-info" href="{{route('login-form')}}">Login to message seller.</a>
          @endauth
        </div>
        <div class="tips">
          <h4>Safety Tips for Buyers</h4>
          <ol>
            <li><a href="#">Do not pay before getting what you want to buy.</a></li>
            <li><a href="#">Thoroughly check what you want to buy before paying.</a></li>
            <li><a href="#">Always endeavour to meet in a public place to carry out any exchange.</a></li>
          </ol>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>
<!--//single-page-->
<!-- js -->
<script src="{{asset('/js/jquery.min.js')}}"></script>
<script src="{{asset('/js/bootstrap.min.js')}}"></script>
<script src="{{asset('/js/bootstrap-select.js')}}"></script>
<script src="{{asset('/js/jquery.flexisel.js')}}"></script>
<script src="{{asset('/js/jquery.flexslider.js')}}"></script>
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide",
	controlNav: "thumbnails"
  });
});
</script>
<script>
</script>
@endsection

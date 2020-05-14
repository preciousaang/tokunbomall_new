@extends('layouts.base')
@section('title', 'My Ads')
@section('content')
<div class="terms main-grid-border">
  <div class="container">
    <h2 class="head">My ADS</h2>
    <hr>
	<a class="btn btn-info" href="{{route('post-ad-form')}}"><i class="fa fa-plus"></i> Post New Add</a>

    <hr>
    @include('partials.partials')
    @forelse($products as $product)
    <div class="row">
      <div class="col-md-3"> <img class="img-rounded" src="{{asset('uploads/'.json_decode($product->product_image)[0])}}" width="300px" height="250px"  /> </div>

      <div class="col-md-6">
        <h3>
        Product Description
       <table class="table product-info">
       	<thead>
       		<tr>
       			<th>Title</th>
       			<th>Price</th>
       			<th>Category</th>
       			<th>Upload Time</th>
       			<th>State</th>
       		</tr>
       	</thead>
       	<tbody>
       		<tr>
       			<td>{{$product->title}}</td>
       			<td>{{__("₦").$product->price}}</td>
       			<td>{{$product->category->title}}></td>
       			<td>{{$product->created_at}}</td>
       			<td>{{$product->region->state->state}}</td>
       		</tr>
       	</tbody>
       </table>
       </div>
      <div class="col-md-3" style="vertical-align:bottom">

          <a onclick="return confirm('Are You sure');" class="btn btn-danger btn-sm" href="{{route('delete-product', $product->id)}}">Delete</a>
          <a class="btn btn-info btn-sm" href="{{route('edit-product', $product->id)}}">Edit</a>
      </div>
    </div>
    <hr>
    @empty
        <strong>You have no product</strong>
    @endforelse
    <hr>
    <div class="row">
        <div class="col-xl-12">
           {{$products->links()}}
        </div>
       
    </div>
  </div>
</div>
<!-- js -->
<script src="{{asset('/js/jquery.min.js')}}"></script>
<script src="{{asset('/js/bootstrap.min.js')}}"></script>
<script src="{{asset('/js/bootstrap-select.js')}}"></script>
<script src="{{asset('/js/jquery.leanModal.min.js')}}"></script>
<script src="{{asset('/js/jquery.uls.data.js')}}"></script>
<script src="{{asset('/js/jquery.uls.data.utils.js')}}"></script>
<script src="{{asset('/js/jquery.uls.lcd.js')}}"></script>
<script src="{{asset('/js/jquery.uls.core.js')}}"></script>
<script src="{{asset('/js/jquery.flexisel.js')}}"></script>
@endsection

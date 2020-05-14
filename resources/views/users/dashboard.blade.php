@extends('layouts.base')
@section('title', 'Admin Dashboard')
@section('content')
<div class="terms main-grid-border">
  <div class="container">
    <h2 class="head">Dashboard</h2>
    <hr>
	<a class="btn btn-info" href="{{route('post-ad-form')}}"><i class="fa fa-plus"></i> Post New Add</a>
	&nbsp;&nbsp;

	<a class="btn btn-success" href="{{route('dashboard', 'approved')}}">Approved({{$approved_count}})</a>
	&nbsp;&nbsp;
    <a class="btn  btn-danger" href="{{route('dashboard', 'unapproved')}}">Unapproved({{$unapproved_count}})</a>
    &nbsp;&nbsp;


    <hr>
    @include('partials.partials')
    <form action="{{route('bulk-action')}}" method="post">
		@csrf
    @forelse($products as $product)
    <div class="row">
      <div class="col-md-3"> <img class="img-rounded" src="{{asset('uploads/'.json_decode($product->product_image)[0])}}" width="300px" height="250px"  /> </div>

      <div class="col-md-6">
        <h3>Product Description</h3>
       <table class="table product-info">
       	<thead>
       		<tr>
       			<th>Select</th>
       			<th>User</th>
       			<th>Title</th>
       			<th>Price</th>
       			<th>Category</th>
       			<th>Uploaded</th>
       			<th>State</th>
       		</tr>
       	</thead>
       	<tbody>
       		<tr>
       			<td><input name="options[]" type="checkbox" value="{{$product->id}}"></td>
       			<td>{{$product->user->full_naame}}</td>
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
		  <a target="_blank" class="btn btn-info btn-sm" href="{{route('single-product', ['id'=>$product->id, 'slug'=>$product->slug])}}">View</a>
		  @can('delete', $product)
          <a onclick="return confirm('Are you sure you want to delete?');" class="btn btn-danger btn-sm" href="{{route('delete-product', $product->id)}}">Delete</a>
		  @endcan
		  @if(request()->segment(2)=='unapproved')
          <a class="btn btn-success btn-sm" href="{{route('change-state', $product->id)}}">Approve</a>
		  @endif
		  @if(request()->segment(2)=='approved')
         <a class="btn btn-info btn-sm" href="{{route('change-state', $product->id)}}">Unapprove</a>
		 @endif
      </div>
    </div>
    <hr>
	@empty
	<strong>You Don't have any in this section.</strong>
    @endforelse
    <select name="action">
    	<option value="">Select Bulk Action</option>
    	<option value="approve">Approve</option>
    	<option value="unapprove">Unpprove</option>
    	<option value="delete">Delete</option>
    </select>&nbsp; &nbsp;
    <input class="btn btn-info btn-sm" type="submit" name="submit" value="Apply">
    </form>
    <hr>
    <div class="row">
    {{$products->links()}}
    </div>
  </div>
</div>


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

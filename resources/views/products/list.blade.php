@extends('layouts.base')
@section('title', 'All Products')
@section('content')
@include('layouts.banner')
<div class="total-ads main-grid-border">
  <div class="container">
@include("layouts.select-box")
    <ol class="breadcrumb" style="margin-bottom: 5px;">
      <li><a href="/">Home</a></li>
      @if(request()->segment(2) != 'all')
      <li class="active">{{$categ->title}}</li>
      @endif
    </ol>
    <div class="ads-grid">
      <div class="side-bar col-md-3">
        <div class="featured-ads">
          <h2 class="sear-head fer">Trending Ads</h2>


        @foreach($trending_products as $trend)
          <div class="featured-ad"> <a href="">

            <div class="featured-ad-left"> <img src="{{asset('storage/uploads/'.json_decode($trend->product_image)[0])}}" title="ad image" alt="" /> </div>
            <div class="featured-ad-right">
              <h4><?php echo $trend->title; ?></h4>
              <p>₦<?php echo number_format($trend->price); ?></p>
            </div>
            <div class="clearfix"></div>
            </a> </div>
        @endforeach



        </div>
      </div>
      <div class="ads-display col-md-9">
        <div class="wrapper">
          <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
            <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
              <li role="presentation" class="active"> <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true"> <span class="text">All Ads</span> </a> </li>
            </ul>
            <div id="myTabContent" class="tab-content">
              <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                <div>
                  <div id="container">
                    <div class="view-controls-list" id="viewcontrols">
                      <label>view :</label>
                      <a class="gridview"><i class="glyphicon glyphicon-th"></i></a> <a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a> </div>
                    <div class="clearfix"></div>
                    <!--List--->

                    <ul class="list">

                      @forelse($products as $product)
                      <a href="">

                      <li> <img src="{{asset('storage/uploads/'.json_decode($product->product_image)[0])}}" title="" alt="" />
                        <section class="list-left">
                          <h5 class="title"><?php echo $product->title; ?></h5>
                          <span class="adprice">₦<?php echo number_format($product->price); ?></span>
                          <p class="catpath">Buying and Selling made Easier and Faster</p>
                        </section>
                        <section class="list-right"> <span class="date">{{$product->created_at->diffForHumans()}}</span> <span class="cityname">{{$product->region->local_govt}}, {{$product->region->state->state}}</span> </section>
                        <div class="clearfix"></div>
                      </li>
                      </a>
                      @empty
                      No Products in this category
                      @endforelse
                    </ul>
                  </div>
                </div>
              </div>
              {{$products->links()}}
            </div>
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="{{asset('/js/jquery.min.js')}}"></script>
<script src="{{asset('/js/bootstrap.min.js')}}"></script>
<script src="{{asset('/js/bootstrap-select.js')}}"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
    $("#selectRegion").selectpicker({
        liveSearch: true,
        maxOptions: 1
    });
  });
</script>
<script src="{{asset('/js/jquery.leanModal.min.js')}}"></script>
<script src="{{asset('/js/jquery.uls.data.js')}}"></script>
<script src="{{asset('/js/jquery.uls.data.utils.js')}}"></script>
<script src="{{asset('/js/jquery.uls.lcd.js')}}"></script>
<script src="{{asset('/js/jquery.uls.core.js')}}"></script>
<script>
$( document ).ready( function() {
	$( '.uls-trigger' ).uls( {
		onSelect : function( language ) {
			var languageName = $.uls.data.getAutonym( language );
			$( '.uls-trigger' ).text( languageName );
		},
		quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
	} );
} );
</script>
<script src="{{asset('js/tabs.js')}}"></script>
<script>
$('#myModal').modal('');
</script>
<script type="text/javascript">
$(document).ready(function () {
var elem=$('#container ul');
	$('#viewcontrols a').on('click',function(e) {
		if ($(this).hasClass('gridview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('list').addClass('grid');
				$('#viewcontrols').removeClass('view-controls-list').addClass('view-controls-grid');
				$('#viewcontrols .gridview').addClass('active');
				$('#viewcontrols .listview').removeClass('active');
				elem.fadeIn(1000);
			});
		}
		else if($(this).hasClass('listview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('grid').addClass('list');
				$('#viewcontrols').removeClass('view-controls-grid').addClass('view-controls-list');
				$('#viewcontrols .gridview').removeClass('active');
				$('#viewcontrols .listview').addClass('active');
				elem.fadeIn(1000);
			});
		}
	});
});
</script>
<script src="{{asset('js/jquery-ui.js')}}"></script>
<script type='text/javascript'>//<![CDATA[
$(window).load(function(){
 $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 9000,
      values: [ 50, 6000 ],
      slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
      }
 });
$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

});//]]>

$(document).ready(function(){
	state = $("#selectRegion").val();

	category = $("#selectCategory").val();
	$("#selectRegion").change(function(){
		state = $(this).val();
		window.location.assign("{{url('/')}}/classified/"+category+"?state="+state);
	});
	$("#selectCategory").change(function(){
		category = $(this).val();
		window.location.assign("{{url('/')}}/classified/"+category);
	});

});

</script>
@endsection

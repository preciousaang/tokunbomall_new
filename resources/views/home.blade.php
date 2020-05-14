@extends('layouts.base')
@section('title', 'The Biggest online Market for selling used things')
@section('content')
<div class="content">
  <div class="categories">
    <div class="container">
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'mobiles')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-mobile"></i></div>
            <h4 class="clrchg">Mobiles</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'electronics')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-laptop"></i></div>
            <h4 class="clrchg"> Electronics & Appliances</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'cars')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-car"></i></div>
            <h4 class="clrchg">Cars</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'bikes')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-motorcycle"></i></div>
            <h4 class="clrchg">Bikes</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'furniture')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-wheelchair"></i></div>
            <h4 class="clrchg">Furniture</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'pets')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-paw"></i></div>
            <h4 class="clrchg">Pets</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'books-sports-hobbies')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-book"></i></div>
            <h4 class="clrchg">Books, Sports & Hobbies</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'fashion')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-asterisk"></i></div>
            <h4 class="clrchg">Fashion</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'kids')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-gamepad"></i></div>
            <h4 class="clrchg">Kids</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'services')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-shield"></i></div>
            <h4 class="clrchg">Services</h4>
          </div>
        </div>
        </a> </div>
      <div class="col-md-2 focus-grid"> <a href="{{route('list-product', 'real-estate')}}">
        <div class="focus-border">
          <div class="focus-layout">
            <div class="focus-image"><i class="fa fa-home"></i></div>
            <h4 class="clrchg">Real Estate</h4>
          </div>
        </div>
        </a> </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <div class="trending-ads">
    <div class="container"> 
      <!-- slider -->
      <div class="trend-ads">
        <h2>Trending Ads</h2>
        <ul id="flexiselDemo3">
            
         <li>
          	
			@forelse($products as $product)
            <div class="col-md-3 biseller-column"> <a href="">              
              <img width="350" height="250" src="{{asset('uploads/'.json_decode($product->product_image)[0])}}" alt="{{$product->title}}">
              <span class="price">₦{{number_format($product->price)}}</span> </a>
              <div class="ad-info">
                <h5>{{$product->title}}</h5>
                <span>30 minutes ago</span> </div>
            </div>
            @empty
          @endforelse
          </li>
         
          
        </ul>
      </div>
    </div>
    <!-- //slider --> 
  </div>
  <div class="mobile-app">
    <div class="container">
      <div class="col-md-5 app-left"> <a href="mobileapp.html"><img src="images/app.png" alt=""></a> </div>
      <div class="col-md-7 app-right">
        <h3>Tokunbomall App is the <span>Easiest</span> way for Selling and buying second-hand goods</h3>
        <p>Our Mobile App Will Be Available soon</p>
        <div class="app-buttons">
          <div class="app-button"> <a href="#"><img src="images/1.png" alt=""></a> </div>
          <div class="app-button"> <a href="#"><img src="images/2.png" alt=""></a> </div>
          <div class="clearfix"> </div>
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
<script src="{{asset('/js/jquery.leanModal.min.js')}}"></script>
<script src="{{asset('/js/jquery.uls.data.js')}}"></script>
<script src="{{asset('/js/jquery.uls.data.utils.js')}}"></script>
<script src="{{asset('/js/jquery.uls.lcd.js')}}"></script>
<script src="{{asset('/js/jquery.uls.core.js')}}"></script>
<script src="{{asset('/js/jquery.flexisel.js')}}"></script>
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
  });
</script> 
<script type="text/javascript">
   $(window).load(function() {
    $("#flexiselDemo3").flexisel({
      visibleItems:1,
      animationSpeed: 1000,
      autoPlay: true,
      autoPlaySpeed: 5000,    		
      pauseOnHover: true,
      enableResponsiveBreakpoints: true,
      responsiveBreakpoints: { 
        portrait: { 
          changePoint:480,
          visibleItems:1
        }, 
        landscape: { 
          changePoint:640,
          visibleItems:1
        },
        tablet: { 
          changePoint:768,
          visibleItems:1
        }
      }
    });
    
  });
</script> 
<script>
$('#myModal').modal('');
</script>
@endsection
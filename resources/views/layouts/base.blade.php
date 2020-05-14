<!DOCTYPE html>
        <html>
        <head>
        <link rel="icon" href="{{asset('images/Logo.jpeg')}}" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="description" content="The Biggest online Market for selling used things">
        <meta name="author" content="TokunboMall">
        <meta name="keywords" content="Tokunbo Mall">
        <!-- //for-mobile-apps -->
        <!--fonts-->
        <link href="//fonts.googleapis.com/css?family=Ubuntu+Condensed" rel="stylesheet" type="text/css">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css">
        <!--//fonts-->

        <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}" />
        <link rel="stylesheet" href="{{asset('css/bootstrap-select.css')}}" />
        <link rel="stylesheet" href="{{asset('css/style.css')}}" />
        <link rel="stylesheet" href="{{asset('css/easy-responsive-tabs.css')}}" />
        <link rel="stylesheet" href="{{asset('css/flexslider.css')}}" />
        <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}" />
        <link rel="stylesheet" href="{{asset('css/jquery-ui1.css')}}" />
        <link rel="stylesheet" href="{{asset('css/jquery.uls.css')}}" />
        <link rel="stylesheet" href="{{asset('css/jquery.uls.grid.css')}}" />
        <link rel="stylesheet" href="{{asset('css/jquery.uls.lcd.css')}}" />
    <title>@yield('title', 'Welcome') - Tokunbo Mall</title>
    <body>
        @include('layouts.nav')
@yield('content')
        <script>
        	$(document).ready(function(){
        		$("#basic2").change(function(){
        			window.location.assign('cars');
        		});
        	});
        </script>

@section('footer')
        <footer>
          <div class="footer-top">
            <div class="container">
              <div class="foo-grids">
                <div class="col-md-3 footer-grid">
                  <h4 class="footer-head">Who We Are</h4>
                  <p>A platform for facilitating, promoting and effectuating sales of used things. Tokunbo Mall is a fast-growing free online ecommerce website with advanced security system.
                    We provide a simple hassle-free solution to sell and buy almost anything.</p>
                </div>
                <div class="col-md-3 footer-grid">
                  <h4 class="footer-head">Help</h4>
                  <ul>
                    <li><a href="">How it Works</a></li>
                    <li><a href="">Sitemap</a></li>
                    <li><a href="">Faq</a></li>
                    <li><a href="">Feedback</a></li>

                  </ul>
                </div>
                <div class="col-md-3 footer-grid">
                  <h4 class="footer-head">Information</h4>
                  <ul>
                    <li><a href="terms.html">Terms of Use</a></li>
                    <li><a href="privacy.html">Privacy Policy</a></li>
                  </ul>
                </div>
                <div class="col-md-3 footer-grid">
                  <h4 class="footer-head">Contact Us</h4>
                  <span class="hq">Our headquarters</span>
                  <address>
                  <ul class="location">
                    <li><span class="glyphicon glyphicon-map-marker"></span></li>
                    <li>Address</li>
                    <div class="clearfix"></div>
                  </ul>
                  <ul class="location">
                    <li><span class="glyphicon glyphicon-earphone"></span></li>
                    <li></li>
                    <div class="clearfix"></div>
                  </ul>
                  <ul class="location">
                    <li><span class="glyphicon glyphicon-envelope"></span></li>
                    <li><a href="mailto:info@example.com"> tokunbomall@gmail.com</a></li>
                    <div class="clearfix"></div>
                  </ul>
                  </address>
                </div>
                <div class="clearfix"></div>
              </div>
            </div>
          </div>
          <div class="footer-bottom text-center">
            <div class="container">
              <div class="footer-logo"> <a href="index.html"><span>Tokunbo</span>Mall</a> </div>
              <div class="footer-social-icons">
                <ul>
                  <li><a class="facebook" href="#"><span>Facebook</span></a></li>
                  <li><a class="twitter" href="#"><span>Twitter</span></a></li>
                  <li><a class="flickr" href="#"><span>Flickr</span></a></li>
                  <li><a class="googleplus" href="#"><span>Google+</span></a></li>
                  <li><a class="dribbble" href="#"><span>Dribbble</span></a></li>
                </ul>
              </div>
              <div class="copyrights">
                <p> © 2018 Tokunbo Mall. All Rights Reserved | Design by <a href="http://www.webmirandum.com">WebMirandum</a></p>
              </div>
              <div class="clearfix"></div>
            </div>
          </div>
        </footer>
        <!--footer section end-->
        </body></html>
        @show

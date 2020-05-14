@extends('layouts.base')
@section('title', 'Forgot Password')
@section('content')
<section>
  <div id="page-wrapper" class="sign-in-wrapper">
    <div class="graphs">
      <div class="sign-up">
        <h1>Enter Email For Confirmation</h1>        
        <div class="reg-form">
        	@include('partials.partials')
          <form action="" method="post">
            @csrf
            <div class="sign-u">
                <div class="sign-up1">
                  <h4>Enter Email*</h4>
                </div>
                <div class="sign-up2">
                  <input name="email" type="email" value=""/>
                </div>
                <div class="clearfix"> </div>
              </div>            
            <div class="sub_home">
              <div class="sub_home_left">
                <input name="submit" type="submit" value="Send Email">
              </div>
            </div>
          </form>
        </div>
        <div class="sub_home_right">
          <p>Go Back to <a href="index.php">Home</a></p>
        </div>
        <div class="clearfix"> </div>
      </div>
    </div>
  </div>
</section>
</section>
@endsection
@section('footer')

<!--footer section start-->
<footer class="diff">
<p class="text-center">&copy 2018 Tokunbo Mall. All Rights Reserved | Design by <a href="https://webmirandum.com/" target="_blank">WebMirandum.</a></p>
</footer>
<!--footer section end-->
</section>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="{{asset("js/jquery.min.js")}}"></script>
<script src="{{asset("js/bootstrap.min.js")}}"></script>
<script src="{{asset("js/bootstrap-select.js")}}"></script>



</body></html>


@endsection

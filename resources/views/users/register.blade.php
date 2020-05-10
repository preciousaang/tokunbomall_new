@extends('layouts.base')
@section('title', 'Register')
@section('content')
<section>
  <div id="page-wrapper" class="sign-in-wrapper">
    <div class="graphs">
      <div class="sign-up">

        <h1>Create an account</h1>
        <h2>Personal Information</h2>
        @include('partials.partials')
        <div class="reg-form">
          <form action="{{route('register')}}" method="post">
              @csrf
            <div class="sign-u">
              <div class="sign-up1">
                <h4>Username* :</h4>
              </div>
              <div class="sign-up2">
                <input data-validation="required alphanumeric length" data-validation-length="max40" maxlength="40" data-validation-allowing="-_" name="username" type="text" value="{{old('username')}}" required id="username" placeholder=" "/>
              </div>
              <div class="clearfix"> </div>
            </div>
            <div class="sign-u">
              <div class="sign-up1">
                <h4>Full Name* :</h4>
              </div>
              <div class="sign-up2">
                <input data-validation="required" type="text" name="full_name" placeholder="" value="{{old('full_name')}}" required/>
              </div>
              <div class="clearfix"> </div>
            </div>

            <div class="sign-u">
              <div class="sign-up1">
                <h4>Phone No* :</h4>
              </div>
              <div class="sign-up2">
                <input
                    data-validation="required number length"
                    data-validation-length="min11 max11"
                    name="phone"
                    maxlength="11" type="text" required id="phone" value="{{old('phone')}}" placeholder="08012345678"/>
              </div>
              <div class="clearfix"> </div>
            </div>


            <div class="sign-u">
              <div class="sign-up1">
                <h4>Email Address* :</h4>
              </div>
              <div class="sign-up2">
                <input data-validation="required email" name="email" type="text" value="{{old('email')}}" required id="email" placeholder="abcd@email.com"/>
              </div>
              <div class="clearfix"> </div>
            </div>
            <div class="sign-u">
              <div class="sign-up1">
                <h4>Password* :</h4>
              </div>
              <div class="sign-up2">
                <input data-validation="required" id="password" name="password" type="password" placeholder=" " required/>
              </div>
              <div class="clearfix"> </div>
            </div>
            <div class="sign-u">
              <div class="sign-up1">
                <h4>Confirm Password* :</h4>
              </div>
              <div class="sign-up2">
                <input data-validation-confirm="password" data-validation="required confirmation"  type="password" name="password_confirmation" placeholder=" " required/>
              </div>
              <div class="clearfix"> </div>
            </div>
            <div class="sub_home">
              <div class="sub_home_left">
                <input type="submit" value="Register">
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
<script src="{{asset("js/jquery.leanModal.min.js")}}"></script>
<script src="{{asset("js/jquery.uls.data.js")}}"></script>
<script src="{{asset("js/jquery.uls.data.utils.js")}}"></script>
<script src="{{asset("js/jquery.uls.lcd.js")}}"></script>
<script src="{{asset("js/jquery.uls.languagefilter.js")}}"></script>
<script src="{{asset("js/jquery.uls.regionfilter.js")}}"></script>
<script src="{{asset("js/jquery.uls.core.js")}}"></script>
<script src="{{asset("js/jquery.flexisel.js")}}"></script>
<script src="{{asset("js/easyResponsiveTabs.js")}}"></script>
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
</script>
<script>
$('#myModal').modal('');
</script>

</body></html>


@endsection

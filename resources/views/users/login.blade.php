@extends('layouts.base')
@section('title', 'Login')

@section('content')

<section>
  <div id="page-wrapper" class="sign-in-wrapper">
    <div class="graphs">
      <div class="sign-in-form">
        <div class="sign-in-form-top">
          <h1>Log in</h1>
        </div>
        @include('partials.partials')
        <div class="signin">
          <div class="signin-rit"> <span class="checkbox1">
            <label class="checkbox">
              <input type="checkbox" name="checkbox" checked="">
              Forgot Password ?</label>
            </span>
            <p><a href="#">Click Here</a> </p>
            <div class="clearfix"> </div>
          </div>
          <form action="{{route('login')}}" method="post">
              @csrf
            <div class="log-input">
              <div class="log-input-left">
                <input type="text" class="user" value="" placeholder="Your Username" name="username">
              </div>
              <span class="checkbox2">
              <label class="checkbox">
                <input type="checkbox" name="checkbox" checked="">
                <i> </i></label>
              </span>
              <div class="clearfix"> </div>
            </div>
            <div class="log-input">
              <div class="log-input-left">
                <input type="password" class="lock" placeholder="*************" name="password">
              </div>
              <span class="checkbox2">
              <label class="checkbox">
                <input type="checkbox" name="checkbox" checked="">
                <i> </i></label>
              </span>
              <div class="clearfix"> </div>
            </div>
            <input name="submit" type="submit" value="Log in">
          </form>
        </div>
        <div class="new_people"> <a href="{{route('registration-form')}}">Register Now!</a> </div>
      </div>
    </div>
  </div>
  @endsection

@section('footer')
    });
    <!--footer section start-->
    <footer class="diff">
    <p class="text-center">&copy 2018 Tokunbo Mall. All Rights Reserved | Design by <a href="https://webmirandum.com/" target="_blank">WebMirandum.</a></p>
    </footer>
    <!--footer section end-->
    </section>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="{{asset("js/jquery.min.js")}}"></script>
    <script src="{{asset("js/bootstrap.min.js")}}"></script>




</body></html>
@endsection

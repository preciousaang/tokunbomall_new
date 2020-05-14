@extends('layouts.base')
@section('title', 'User Profile')
@section('content')
<section>
  <div id="page-wrapper" class="sign-in-wrapper">
    <div class="graphs">
      <div class="sign-up">
        <h1>Edit Your Account</h1>
        <h2>Personal Information</h2>
        <div class="reg-form">
        	@include('partials.partials')
          <form action="{{route('update-profile')}}" method="post">
            @csrf
            <div class="sign-u">
              <div class="sign-up1">
                <h4>Username</h4>
              </div>
              <div class="sign-up2">
                <input readonly name="username" class="disabled" type="text" value="{{$user->username}}" required id="username" placeholder=" "/>
              </div>
              <div class="clearfix"> </div>
            </div>
             <div class="sign-u">
              <div class="sign-up1">
                <h4>Full Name*</h4>
              </div>
              <div class="sign-up2">
                <input name="full_name" type="text" value="{{$user->full_name}}" required id="full_name" placeholder=" "/>
              </div>
              <div class="clearfix"> </div>
            </div>
            
            <div class="sign-u">
              <div class="sign-up1">
                <h4>Phone No*</h4>
              </div>
              <div class="sign-up2">
                <input name="phone" maxlength="11" type="text" required id="phone" value="{{$user->phone}}" placeholder="08012345678"/>
              </div>
              <div class="clearfix"> </div>
            </div>
            
            <div class="sign-u">
              <div class="sign-up1">
                <h4>Email Address*</h4>
              </div>
              <div class="sign-up2">
                <input name="email" type="text" value="{{$user->email}}" required id="username" placeholder="abcd@email.com"/>
              </div>
              <div class="clearfix"> </div>
            </div>
            <div class="sign-u">
              <div class="sign-up1">
                
              </div>
              <div class="sign-up2">
                  <a href="{{route('edit-password-form')}}">Change Password</a>
              </div>
              <div class="clearfix"> </div>
            </div>
            <div class="sub_home">
              <div class="sub_home_left">
                <input name="submit" type="submit" value="Update">
              </div>
            </div>
          </form>
        </div>
        <div class="sub_home_right">
          <p>Go Back to <a href="{{secure_url('/')}}">Home</a></p>
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

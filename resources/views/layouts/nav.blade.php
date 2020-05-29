<style>
.logo{
    text-align:left;
}
.logo img{
	width:150px;
	height:70px;
}
</style>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header logo">
      <a href="{{route('homepage')}}"> 
      <img src="{{asset('images/Logo.jpeg')}}" /> 
    </a></div>
    <ul class="nav navbar-nav navbar-right">
  
        @auth
      <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          <i class="fa fa-user fa-2x" style="color: rgb(1, 161, 133);">&nbsp;</i>
          <strong style="color: rgb(243, 197, 0); font-size:18px;">{{strtoupper(auth()->user()->full_name)}}</strong><span class="caret"></span></a>
        <ul class="dropdown-menu">
            @if(auth()->user()->is_admin == 1)
		<li><a href="{{route('dashboard')}}"><strong style="color: rgb(243, 197, 0); font-size:18px;">Dashboard</strong></a></li>
        @endif
          <li><a href="{{route('edit-profile-form')}}"><strong style="color: rgb(243, 197, 0); font-size:18px;">Profile</strong></a></li>
          <li><a href="{{route('message-list')}}"><strong style="color: rgb(243, 197, 0); font-size:18px;"><i class="fa fa-inbox"></i>&nbsp;Messages ({{auth()->user()->receivedMessages()->where('read', 0)->count()}})</strong></a></li>         
          <li><a href="{{route('my-ads')}}"><strong style="color: rgb(243, 197, 0); font-size:18px;">My Ads</strong></a></li>
          <li><a href="{{route('logout')}}"><strong style="color: rgb(243, 197, 0); font-size:18px;">Logout</strong></a></li>
        </ul>
      </li>
      @endauth

      @guest
      <li><a href="{{route('registration-form')}}"><button class="btn btn-success fa fa-user-plus">&nbsp; &nbsp;Register</button></a></li>
      <li><a href="{{route('login-form')}}"><button class="btn btn-success fa fa-sign-in">&nbsp; &nbsp;Login</button></a></li>
      @endguest

    </ul>
  </div>
</nav>

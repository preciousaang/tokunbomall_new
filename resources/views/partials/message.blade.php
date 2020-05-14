@if(session()->has('message'))
<p class="alert alert-info">
    {{session()->get('message')}}
</p>
@endif
@if(session()->has('status'))
<p class="alert alert-info">
    {{session()->get('status')}}
</p>
@endif
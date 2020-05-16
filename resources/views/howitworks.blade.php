@extends('layouts.base')
@section('title', 'How it works')
@section('content')
@include('layouts.banner')
<div class="work-section">
    <div class="container">
        <h2 class="head">How It Works</h2>
            <div class="work-section-head text-center">
                <p></p>
            </div>
            <div class="work-section-grids text-center">
                <div class="col-md-3 work-section-grid">
                    <i class="fa fa-pencil-square-o"></i>
                    <h4>Post an Ad</h4>
                    <p></p>
                    <span class="arrow1"><img src="images/arrow1.png" alt="" /></span>
                </div>
                <div class="col-md-3 work-section-grid">
                    <i class="fa fa-eye"></i>
                    <h4>Find an item</h4>
                    <p></p>
                    <span class="arrow2"><img src="images/arrow2.png" alt="" /></span>
                </div>
                <div class="col-md-3 work-section-grid">
                    <i class="fa fa-phone"></i>
                    <h4>contact the seller</h4>
                    <p></p>
                    <span class="arrow1"><img src="images/arrow1.png" alt="" /></span>
                </div>
                <div class="col-md-3 work-section-grid">
                    <i class="fa fa-money"></i>
                    <h4>make transactions</h4>
                    <p></p>
                </div>
                <div class="clearfix"></div>
                <a class="work" href="{{url('register')}}">Get start Now</a>
            </div>
        </div>
</div>	
@endsection
@extends('layouts.base')
@section('title', 'Site Map')
@section('content')
@include('layouts.banner')
<!-- Regions -->
<div class="container">
    <h2 class="head">Sitemap</h2>
</div>
<div class="sitemap-regions">
    <div class="container">
        <div class="sitemap-region-grid">
            <div class="sitemap-region">
                <h6><a href="{{url('classified/furniture')}}">Furniture</a></h6>
                
            </div>
            <div class="sitemap-region">
                <h6><a href="{{url('classified/bikes')}}">Bikes</a></h6>
                
            </div>
            <div class="sitemap-region">
                <h6><a href="{{url('classified/electronics')}}">Electronics & Appliances</a></h6>
                
            </div>
        </div>
        <div class="sitemap-region-grid">		
            <div class="sitemap-region">
                <h6><a href="{{url('classified/cars')}}">Cars</a></h6>
                
            </div>
            <div class="sitemap-region">
                <h6><a href="{{url('classified/pets')}}">Pets</a></h6>
                
            </div>
            <div class="sitemap-region">
                <h6><a href="{{url('classified/books-sports-hobbies')}}">Books, Sports & Hobbies</a></h6>
                
            </div>
        </div>
        <div class="sitemap-region-grid">
            <div class="sitemap-region">					
                <h6><a href="{{url('classified/classified/mobiles')}}">Mobiles</a></h6>
                
            </div>
            <div class="sitemap-region">					
                <h6><a href="{{url('classified/kids')}}">Kids</a></h6>
                
            </div>
            <div class="sitemap-region">
                <h6><a href="{{url('classified/fashion')}}">Fashion</a></h6>
                
            </div>
            
        </div>
        <div class="clearfix"></div>
    </div>
</div>
@endsection
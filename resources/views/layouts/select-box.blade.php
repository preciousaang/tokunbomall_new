
<div class="select-box">
  <div class="select-city-for-local-ads ads-list">
    <label>Select your city to see local ads</label>
    <select id="selectRegion" class="selectpicker show-tick" data-live-search-true>
		<option @if(!request()->get('state')) selected @endif value="">All States</option>
      @foreach($states as $state)
      <optgroup label="{{$state->state}}">
      @foreach($state->local_govts as $lga)
        <option @if(request()->get('state') == $lga->id) selected @endif value="{{$lga->id}}">{{$lga->local_govt}}</option>
      @endforeach
      </optgroup>
      @endforeach
    </select>
  </div>
  <div class="browse-category ads-list">
    <label>Browse Categories</label>
    <select id="selectCategory" class="selectpicker show-tick">
    	<option @if(request()->segment(2)=='all') selected @endif value="all">All Ads</option>
			@foreach($categories as $category)
      <option @if(request()->segment(2) == $category->slug) selected @endif value="{{$category->slug}}">{{$category->title}}</option>
      @endforeach
    </select>
  </div>
  <div class="search-product ads-list">
  	<form method="get" action="" id="searchForm">
        @csrf
    <label>Search for a specific product</label>
    <div class="search">
      <div id="custom-search-input">
        <div class="input-group">
          <input data-validation="required" type="text" id="search" name="q" class="form-control input-lg" placeholder="Search Products..." />
          <span class="input-group-btn">
          <button class="btn btn-info btn-lg" type="submit"> <i class="glyphicon glyphicon-search"></i> </button>
          </span> </div>
      </div>

    </div>
    </form>
  </div>
  <div class="clearfix"></div>
</div>

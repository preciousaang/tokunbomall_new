@extends('layouts.base')
@section('title', 'Post Ad')
@section('content')
@include("layouts.banner")
<!-- Submit Ad -->
<style>
#title-err, #summary-err, #category-error, #stateErr, #regionErr, #price-err {
	clear: both;
	padding-left: 20%;
}
</style>
<div class="submit-ad main-grid-border">
  <div class="container">
    <h2 class="head">Post an Ad</h2>
    <div class="post-ad-form">
    	@include('partials.partials')
      <form enctype="multipart/form-data" action="{{route('post-ad')}}" method="post">
          @csrf
        <label>Select Category <span>*</span></label>
        <select  data-validation="required" data-validation-error-msg="Select a category" data-validation-error-msg-container="#category-error" name="category">
          <option value="">Select Category</option>
          @foreach($categories as $category)
          <option
		  @if(old('category')==$category->id) selected @endif
		  value="{{$category->id}}">{{$category->title}}</option>
          @endforeach
        </select>
        <div id="category-error" class="clearfix"></div>
        <label>Ad Title <span>*</span></label>
        <input
        data-validation="required"
        data-validation-error-msg-container="#title-err"
        name="title"
        type="text" class="phone" placeholder="" value="{{old('title')}}">
        <div id="title-err" class="clearfix"></div>
        <label>Price <span>*</span></label>
        <input
        data-validation="required number"
        data-validation-error-msg-number="You need to enter a number for price"
        data-validation-error-msg-container="#price-err"
        name="price" type="text" class="phone" placeholder="" value="{{old('price')}}">
        <div id="price-err" class="clearfix"></div>
        <label>Ad Description <span>*</span></label>
        <textarea
        data-validation="required"
        data-validation-error-msg-container="#summary-err"
        name="summary" class="mess" placeholder="Write few lines about your product">{{old('summary')}}</textarea>
        <div id="summary-err" class="clearfix"></div>
        <div class="upload-ad-photos">
          <label>Photos for your ad (At Least 3 Pictures)<span>*</span></label>
          <div class="photos-upload-view">

            <div>
              <input type="file" id="fileselect" name="fileselect[]" accept="image/*"
              data-validation="required size mime"
              data-validation-allowing="jpg, jpeg, gif, png"
              data-validation-max-size = "10M"
              data-validation-error-msg-required = "You must add an image"
              data-validation-error-msg-size = "Maximum image size is 10MB"
              data-validation-error-msg-mime = "Invalid file type"
              />
              <div id="filedrag">or drop files here</div>
            </div>

            <div>
              <input type="file" id="fileselect" name="fileselect[]" accept="image/*"
              data-validation="required size mime"
              data-validation-allowing="jpg, jpeg, gif, png"
              data-validation-max-size = "10M"
              data-validation-error-msg-required = "You must add an image"
              data-validation-error-msg-size = "Maximum image size is 10MB"
              data-validation-error-msg-mime = "Invalid file type"
              />
              <div id="filedrag">or drop files here</div>
            </div>

            <div>
              <input type="file" id="fileselect" name="fileselect[]" accept="image/*"
              data-validation="required size mime"
              data-validation-allowing="jpg, jpeg, gif, png"
              data-validation-max-size = "10M"
              data-validation-error-msg-required = "You must add an image"
              data-validation-error-msg-size = "Maximum image size is 10MB"
              data-validation-error-msg-mime = "Invalid file type"
              />
            </div>

            <div>
              <input type="file" id="fileselect" name="fileselect[]" accept="image/*"
              data-validation="size mime"
              data-validation-allowing="jpg, jpeg, gif, png"
              data-validation-max-size = "10M"
              data-validation-error-msg-size = "Maximum image size is 10MB"
              data-validation-error-msg-mime = "Invalid file type"
              />
            </div>

            <div>
              <input type="file" id="fileselect" name="fileselect[]" accept="image/*"
              data-validation="size mime"
              data-validation-allowing="jpg, jpeg, gif, png"
              data-validation-max-size = "10M"
              data-validation-error-msg-size = "Maximum image size is 10MB"
              data-validation-error-msg-mime = "Invalid file type"
              />
            </div>

            <div>
              <input type="file" id="fileselect" name="fileselect[]" accept="image/*"
              data-validation="size mime"
              data-validation-allowing="jpg, jpeg, gif, png"
              data-validation-max-size = "10M"
              data-validation-error-msg-size = "Maximum image size is 10MB"
              data-validation-error-msg-mime = "Invalid file type"
              />
            </div>

            <div>
              <input type="file" id="fileselect" name="fileselect[]" accept="image/*"
              data-validation="size mime"
              data-validation-allowing="jpg, jpeg, gif, png"
              data-validation-max-size = "10M"
              data-validation-error-msg-size = "Maximum image size is 10MB"
              data-validation-error-msg-mime = "Invalid file type"
              />
            </div>
          </div>
          <div class="clearfix"></div>
        </div>

        <label>Select Region <span>*</span></label>
        <select id="region" data-validation="required" data-validation-error-msg="Select a region" data-validation-error-msg-container="#regionErr" name="region">
			<option>Select A Region</option>
            @foreach($states as $state)
                <optgroup label="{{$state->state}}">
                    @foreach($state->local_govts as $local_govt)
                        <option
						@if(old('region')==$local_govt->id) selected @endif
						 value="{{$local_govt->id}}">
                            {{$local_govt->local_govt}}
                        </option>
                    @endforeach
                </optgroup>
            @endforeach
        </select>
        <div id="regionErr" class="clearfix"></div>
        <p class="post-terms">By clicking <strong>post Button</strong> you accept our <a href="terms.html" target="_blank">Terms of Use </a> and <a href="privacy.html" target="_blank">Privacy Policy</a></p>
        <input name="submit" type="submit" value="Post">
        <div class="clearfix"></div>
      </form>
    </div>
  </div>
</div>
<script src="{{asset("js/jquery.min.js")}}"></script>
<script src="{{asset("js/bootstrap.min.js")}}"></script>
<script src="{{asset("js/bootstrap-select.js")}}"></script>
<script src="{{asset("js/jquery.leanModal.min.js")}}"></script>
<script src="{{asset("js/jquery.uls.data.js")}}"></script>
<script src="{{asset("js/jquery.uls.data.utils.js")}}"></script>
<script src="{{asset("js/jquery.uls.lcd.js")}}"></script>


<script src="{{asset("js/jquery.uls.core.js")}}"></script>
<script src="{{asset("js/jquery.flexisel.js")}}"></script>
<script src="{{asset("js/easyResponsiveTabs.js")}}"></script>
<script src="{{asset("js/jquery.form-validator.min.js")}}"></script>
<script src="{{asset("js/mform.js")}}"></script>
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

    $('#region').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
<script>
$( document ).ready( function() {
	$( '.uls-trigger' ).uls( {
		onSelect : function( language ) {
			var languageName = $.uls.data.getAutonym( language );
			$( '.uls-trigger' ).text( languageName );
		},
		quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
	} );
	$.validate();
});
</script>
@endsection

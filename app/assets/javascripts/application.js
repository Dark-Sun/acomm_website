// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require turbolinks
//= require jquery_ujs
//= require jquery.turbolinks
//= require_tree .

$(document).ready (function() {

	// ----------------
	// smoth scrolling after clicking anchor link
	// $('a').click(function(){
	//     $('html, body').animate({
	//         scrollTop: $( $.attr(this, 'href') ).offset().top - 70
	//     }, 500);
 //    	return false;
	// });

	// animate acomm logo
	// $('.img-acomm').animate( {'margin-left': '0px'}, 3000 );
	
	// ----------------
	// google map
	// var position = [48.1506997,17.1101659];
 
	// function showGoogleMaps() {
 
	//     var latLng = new google.maps.LatLng(position[0], position[1]);
	 
	//     var mapOptions = {
	//         zoom: 16, // initialize zoom level - the max value is 21
	//         streetViewControl: false, // hide the yellow Street View pegman
	//         scaleControl: true, // allow users to zoom the Google Map
	//         mapTypeId: google.maps.MapTypeId.ROADMAP,
	//         disableDefaultUI: true,
	//         scrollwheel: false,
	//         center: latLng
 //    };
 
 //    map = new google.maps.Map(document.getElementById('map'),
 //        mapOptions);
 
    // Show the default red marker at the location
    // marker = new google.maps.Marker({
    //     position: latLng,
    //     map: map,
    //     draggable: false,
    //     animation: google.maps.Animation.DROP
    // });
// }
 	// google.maps.event.addDomListener(window, 'load', showGoogleMaps);


 	// ----------------
	// header collapsing
	$header = $('#main-navbar');
	$header.data('size','big');
	$navbar_image_big   = $('.navbar-logo-big');
	$navbar_image_small = $('.navbar-logo-small');
	$navbar_menu =  $('#menu');
	$(window).scroll(function(){
		if (window.innerWidth > 760) {
		    if ($('body').scrollTop() > 150) {
		        if ($header.data('size') == 'big') {
			            $header.data('size','small').stop().animate( {
			            	'min-height': '52px'
			            }, 150);
			            $navbar_image_big.animate( {'padding-top': '0'}, 150);

			            $navbar_menu.animate( {'padding-top': '0'}, 150);
			            // $header.addClass('navbar-small');
		        }
		    } else {
		        if ($header.data('size') == 'small') {
			            $header.data('size','big').stop().animate( {
			            	'min-height': '88px'
			            }, 150);
			            $navbar_image_big.animate( {'padding-top': '15'}, 150);
			            $navbar_menu.animate( {'padding-top': '18'}, 150);
			            // $header.removeClass('navbar-small')
		        } 	         
		    }
		} else {
		    if ($header.data('size') == 'small') {
		    	$header.data('size','big').stop().animate( {
			           	'min-height': '88px'
			           }, 150);
		    	$navbar_image.animate( {'padding-top': '20'}, 150);
			       $navbar_menu.animate( {'padding-top': '15'}, 150);
		    }
		 }
	});

	$('.close').click(function() {
		$('.close').parent().hide(200);
	});
});
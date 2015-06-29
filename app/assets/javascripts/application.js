// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require gmaps/google
//= require cocoon
//= require turbolinks
//= require_tree .
$(document).on('page:change', function() {
	$('#add_btn').trigger('click');
	if (typeof(rawCoords) !== 'undefined') {
	  google.maps.event.addDomListener(window, 'load', initialize(rawCoords));
	}
});

function initialize(rawCoords) {
  	if (rawCoords.length > 0) {
  		var centerPoint = new google.maps.LatLng(rawCoords[0].latitude, rawCoords[0].longitude);
  	} else {
  		var centerPoint = new google.maps.LatLng(40.79171919257143, -73.96485328674316);
  	}
  var mapOptions = {
    zoom: 12,
    center: centerPoint,
    mapTypeId: google.maps.MapTypeId.TERRAIN
  };

  var neighborhoodCoords = [];

  var map = new google.maps.Map(document.getElementById('map'), mapOptions);

  // Define the LatLng coordinates for the polygon's path.
    for (var i = 0; i < rawCoords.length; i++) {
    	var newCoor = new google.maps.LatLng(rawCoords[i].latitude, rawCoords[i].longitude);
    	neighborhoodCoords.push(newCoor);
    }
    console.log(neighborhoodCoords);
//create if condition for var and zipcode
  // Construct the polygon.
  	neighborhoodPolygon = new google.maps.Polygon({
    paths: neighborhoodCoords,
    strokeColor: '#161AA4',
    strokeOpacity: 0.8,
    strokeWeight: 2,
    fillColor: '#161AA4',
    fillOpacity: 0.35
  });
  neighborhoodPolygon.setMap(map);
};

// 	$(document).on('page:change',	function initialize() {
//   var mapOptions = {
//     zoom: 12,
//     center: new google.maps.LatLng(40.79171919257143, -73.96485328674316),
//     mapTypeId: google.maps.MapTypeId.TERRAIN
//   };

//   var neighborhoodCoords;
//   var neighborFidihoodCoords;

//   var map = new google.maps.Map(document.getElementById('map'),
//       mapOptions);

//   // Define the LatLng coordinates for the polygon's path.
//   var uwsCoords = [
//     new google.maps.LatLng(40.79171919257143, -73.96485328674316),
//     new google.maps.LatLng(40.7970474627213, -73.97686958312988),
//     new google.maps.LatLng(40.78093138541519, -73.98768424987793),
//     new google.maps.LatLng(40.775991804565585, -73.97652626037598),
//     new google.maps.LatLng(40.79171919257143, -73.96485328674316),
//   ];
//     var fidiCoords = [
//     new google.maps.LatLng(40.71460639867943, -74.01733875274658),
//     new google.maps.LatLng(40.70484714530104, -74.01939868927002),
//     new google.maps.LatLng(40.70055262070329, -74.01347637176514),
//     new google.maps.LatLng(40.70790519856078, -73.99982929229736),
//     new google.maps.LatLng(40.71232936749063, -74.00506496429443),
//     new google.maps.LatLng(40.71154865315637, -74.00824069976807),
//  	new google.maps.LatLng(40.71460639867943, -74.01733875274658),
//   ];
// //create if condition for var and zipcode
//   // Construct the polygon.
//   	neighborhoodCoords = new google.maps.Polygon({
//     paths: uwsCoords,
//     strokeColor: '#FF0000',
//     strokeOpacity: 0.8,
//     strokeWeight: 2,
//     fillColor: '#FF0000',
//     fillOpacity: 0.35
//   });
//   	neighborFidihoodCoords = new google.maps.Polygon({
//     paths: fidiCoords,
//     strokeColor: '#FF0000',
//     strokeOpacity: 0.8,
//     strokeWeight: 2,
//     fillColor: '#FF0000',
//     fillOpacity: 0.35
//   });
//   neighborFidihoodCoords.setMap(map);
//   neighborhoodCoords.setMap(map);
// });

// google.maps.event.addDomListener(window, 'load', initialize);
/*
	HolisticWare Google Maps sample
*/

function initialize() 
{
	//replace 0's on next line with latitude and longitude numbers from earlier on in tutorial.
	// if not replaced map will not show up
	var myLatlng = new google.maps.LatLng(45.784732, 15.964207);
	var myOptions =
			{
			  zoom: 16
			, center: myLatlng
			, mapTypeId: google.maps.MapTypeId.ROADMAP
			}

	// set the marker.
	// getElementById must be the same as the id container of the map
	var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	var marker = new google.maps.Marker
									(
										{
										  position: myLatlng
										, title: "HolisticWare"
										}
									);

	var contentString =
			'<div id="content">' +
				'<div id="siteNotice">' +
				'<\/div>' +
				'<h2 id="firstHeading" >HolisticWare LLC<\/h2>' + //class="firstHeading"
					'<div id="bodyContent">' +
						'<p style="font-size:small">Office location<\/p>' +
			'		<\/div>' +
				'<\/div>';

	var infowindow = new google.maps.InfoWindow({ content: contentString });

	google.maps.event.addListener(marker, 'click', function () { infowindow.open(map, marker); });

	// To add the marker to the map, call setMap();
	marker.setMap(map);
}

function holisticware_google_maps_init() 
{
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://maps.google.com/maps/api/js?sensor=false&callback=initialize";
	document.body.appendChild(script);
}

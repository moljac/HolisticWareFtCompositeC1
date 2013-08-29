/*
	HolisticWare Google Maps sample

	http://www.geocodezip.com/v3_MW_example_categories.html
	http://www.geocodezip.com/categories.xml
*/

var map_options;
var map;
var infowindow;
var marker_main;

function initialize() 
{
	initialize_holisticware_location();
	initalize_holisticware_employee_locations();
}

function marker_pin_drop(map, position, title)
{
	var marker = new google.maps.Marker
							(
							  {
							  	position: position
							  , map: map
							  , title: title
							  }
							);

	// output("marker[" + marker.getTitle() +"] = " + marker.getPosition().lat() + " " + marker.getPosition().lng());

	// To add the marker to the map, call setMap();
	marker.setMap(map);
}

function initialize_holisticware_location()
{
	var current_lat_lng = new google.maps.LatLng(45.784732, 15.964207);
	map_options =
			{
			  zoom: 16
			, center: current_lat_lng
			, mapTypeId: google.maps.MapTypeId.ROADMAP
			};
	map = new google.maps.Map(document.getElementById("map_canvas"), map_options);

	//replace 0's on next line with latitude and longitude numbers from earlier on in tutorial.
	// if not replaced map will not show up

	// set the marker.
	// getElementById must be the same as the id container of the map
	marker_main = new google.maps.Marker
									(
										{
										  position: current_lat_lng
										, title: "HolisticWare"
										}
									);
	infowindow = new google.maps.InfoWindow({ content: contentString })
	marker_main.setMap(map);

	google.maps.event.addListener
				(
				  marker_main
				, 'click'
				//, marker_main_click
				, function () { infowindow.open(map, marker_main); }
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
}

function marker_main_click()
{
	infowindow.open(map, marker_main);
}

function initalize_holisticware_employee_locations()
{
	var locs = create_locations();
	
	for (i = 0; i < locs.length; i++)
	{
		var position = new google.maps.LatLng(locs[i][1], locs[i][2]);
		var title = locs[i][0];
	
		marker_pin_drop(map, position, title);
	}
}
function initialize_array_of_markers()
{
	var latlng = new google.maps.LatLng(52.474, -1.868);

	var myOptions = 
	{
		zoom: 11,
		center: latlng,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};

	var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	var image = 'i/hotel-map-pin.png';

	var hotels = create_locations()

	for (var i = 0; i < hotels.length; i++)
	{
		var marker = new google.maps.Marker
		({
			position: hotels[1],
			map: map,
			icon: image,
			title: hotels[0],
			zIndex: hotels[2]
		});
	}
}


function create_locations()
{
	var result = [];
	// for (var i = 0; i < imgTitle.length; i++)
	// {
	// 	result.push([imgTitle[i], get_image_url(imgTitle[i])]);
	// }

	result =
		[
			['eki'	, 45.785732		, 15.965207, 4],
			['iki'	, 45.786732		, 15.966207, 3],
			['moki'	, 45.787732		, 15.967207, 2]
		];

	return result;
}
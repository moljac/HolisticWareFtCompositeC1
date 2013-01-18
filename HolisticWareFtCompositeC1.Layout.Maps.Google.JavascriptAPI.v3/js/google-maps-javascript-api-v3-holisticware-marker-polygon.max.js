function drawpolygon(areaid)
{
	var points = [];

	$.ajax
	(
		{
			type: "POST",
			contentType: "application/json; charset=utf-8",
			url: "polygons.asmx/GetPolygonsByArea",
			data: '{ id: "' + areaid + '" }',
			dataType: "json",
			success: function (msg)
			{
				var c = eval(msg.d);
				for (var i in c)
				{
					var lat = parseFloat(c[i][1]);
					var lng = parseFloat(c[i][2]);
					points.push(new google.maps.LatLng(lat, lng));
				}
			}
		}
	);

	var Area;
	Area = new google.maps.Polygon
		(
			{
				paths: points,
				strokeColor: "#204F68",
				strokeOpacity: 0.8,
				strokeWeight: 2,
				fillColor: "#A1CBE2",
				fillOpacity: 0.35
			}
		);
	Area.setMap(map);

	google.maps.event.addListener(Area, 'click', showArrays);
	infowindow = new google.maps.InfoWindow();
}

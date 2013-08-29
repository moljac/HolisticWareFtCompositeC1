var icons = new Array();
icons["red"] = new google.maps.MarkerImage
				(
				  "http://labs.google.com/ridefinder/images/mm_20_red.png",
				  // This marker is 20 pixels wide by 32 pixels tall.
				, new google.maps.Size(12, 20)
				  // The origin for this image is 0,0.
				, new google.maps.Point(0, 0)
				  // The anchor for this image is the base of the flagpole at 0,32.
				, new google.maps.Point(6, 20)
				);

function getMarkerImage(icon_color)
{
	if ((typeof (icon_color) == "undefined") || (icon_color == null))
	{
		icon_color = "red";
	}
	if (!icons[icon_color])
	{
		icons[icon_color] = new google.maps.MarkerImage
								(
								  "http://labs.google.com/ridefinder/images/mm_20_" + icon_color + ".png"
								, // This marker is 20 pixels wide by 32 pixels tall.
								  new google.maps.Size(12, 20)
								, // The origin for this image is 0,0.
								  new google.maps.Point(0, 0)
								, // The anchor for this image is the base of the flagpole at 0,32.
								  new google.maps.Point(6, 20)
								);
	}

	return icons[icon_color];
}
 
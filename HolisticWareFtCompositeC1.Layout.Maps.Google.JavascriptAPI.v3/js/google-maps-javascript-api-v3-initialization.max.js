
google_maps_javascript_api_init()

// Initialization
function google_maps_javascript_api_init()
{
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://maps.google.com/maps/api/js?sensor=false&callback=initialize";
	document.body.appendChild(script);
}

## Composite C1 Google Maps IFrame implementation
	
*	name:  
	HolisticWare.Maps.Google.IFrame.xsl
*	namespace:  
	HolisticWare.Maps.Google
*	description:  
	Google Maps implementation based on iframe
*	url refrences  
	sample:			[]()  
	documentation:	[]()
*	author:   		
	HolisticWare,   [http://holisticware.net](http://holisticware.net)
	Miljenko Cvjetko
*	licence:   
	MIT [http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT)
	
	
### html sample (starting point)

	  <iframe width="425" height="350" frameborder="0" scrolling="yes" marginheight="0" marginwidth="0" 
		  src="http://maps.google.com/maps?f=d&amp;source=s_d&amp;saddr=45.783986,15.964937&amp;daddr=&amp;hl=en&amp;geocode=&amp;mra=mi&amp;mrsp=0&amp;sz=14&amp;sll=45.788115,15.961161&amp;sspn=0.043152,0.092096&amp;ie=UTF8&amp;ll=45.784704,15.963478&amp;spn=0.020949,0.036478&amp;z=14&amp;output=embed"
	  >
	  </iframe>
	
### Usage

Composite C1 - Function

	  <f:function 
			name="HolisticWare.Maps.Google.IFrame" 
			xmlns:f="http://www.composite.net/ns/function/1.0"
			>
			<f:param name="Width" value="100%" />
			<f:param name="Height" value="100%" />
			<f:param name="Latitude"  value="45.784809" />
			<f:param name="Longitude" value="15.964165" />
		</f:function>

Parameter description:

*	Width:  
	Default value = 100%  
	width of the map
*	Height:  
	default value = 100%
*	Latitude:   
	Default value = 45.784809
	Position on the map (HolisticWare LLC, Zagreb, Croatia)
*	Latitude:   
	Default value = 15.964165
	Position on the map (HolisticWare LLC, Zagreb, Croatia)

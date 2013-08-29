<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:in="http://www.composite.net/ns/transformation/input/1.0"
	xmlns:lang="http://www.composite.net/ns/localization/1.0"
	xmlns:f="http://www.composite.net/ns/function/1.0"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="xsl in lang f">

  <!--
Docummentation.MarkDown.Begin
===============================================================================
## Composite C1 Google Maps IFrame implementation
	
*	name:  
	HolisticWare.Layout.Maps.Google.IFrame.xsl
*	namespace:  
	HolisticWare.Layout.Maps.Google
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

*	Debug: true | false  
	Default value = false  
	Debugging excludes speed optimizations (PageSpeed, YSlow) -  
	javascript and css minifications/minimizations  
	For production set Debug to false
*	Width:  css width  
	Default value = 100%  
	css width of the map
*	Height:  css height  
	Default value = 100%  
	css height of the map
*	Latitude: decimal value  
	Default value = 45.784809  
	Position on the map (HolisticWare LLC, Zagreb, Croatia)  
*	Longitude: decimal value  
	Default value = 15.964165  
	Position on the map (HolisticWare LLC, Zagreb, Croatia)  

===============================================================================
Docummentation.MarkDown.End
-->

  <xsl:param name="Debug"	select="/in:inputs/in:param[@name='Debug']" />
  <xsl:param name="debug" select="translate($Debug,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="Width"	select="/in:inputs/in:param[@name='Width']" />
  <xsl:param name="width" select="translate($Width,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="Height" select="/in:inputs/in:param[@name='Height']" />
  <xsl:param name="height" select="translate($Height,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="Latitude" select="/in:inputs/in:param[@name='Latitude']" />
  <xsl:param name="latitude" select="translate($Latitude,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="Longitude" select="/in:inputs/in:param[@name='Longitude']" />
  <xsl:param name="longitude" select="translate($Longitude,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:template match="/">
	<html>
	  <head>
		<!-- markup placed here will be shown in the head section of the rendered page -->
	  </head>
	  <body>

		<!--
		  Debugging output:
		-->
		<div>
		  Width = <xsl:value-of select="/in:inputs/in:param[@name='Width']" />
		  <br/>
		  width = <xsl:value-of select="$width" />
		  <br/>
		  Height = <xsl:value-of select="/in:inputs/in:param[@name='Height']" />
		  <br/>
		  height = <xsl:value-of select="$height" />
		  <br/>
		  Latitude = <xsl:value-of select="/in:inputs/in:param[@name='Latitude']" />
		  <br/>
		  latitude = <xsl:value-of select="$latitude" />
		  <br/>
		  Longitude = <xsl:value-of select="/in:inputs/in:param[@name='Longitude']" />
		  <br/>
		  longitude = <xsl:value-of select="$longitude" />
		</div>
		<!--
			style="position: absolute; width: {$width}; height: {$height};"
		-->
		<iframe
			width="{$width}" height="{$height}"
			scrolling="yes"
			frameborder="1"  marginheight="1" marginwidth="1"
			src="http://maps.google.com/maps?f=d&amp;source=s_d&amp;saddr={$latitude},{$longitude}&amp;daddr=&amp;hl=en&amp;geocode=&amp;mra=mi&amp;mrsp=0&amp;sz=14&amp;sll={$latitude},{$Longitude}1&amp;sspn=0.043152,0.092096&amp;ie=UTF8&amp;ll={$latitude},{$longitude}&amp;spn=0.020949,0.036478&amp;z=14&amp;output=embed"
		>
		</iframe>
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>

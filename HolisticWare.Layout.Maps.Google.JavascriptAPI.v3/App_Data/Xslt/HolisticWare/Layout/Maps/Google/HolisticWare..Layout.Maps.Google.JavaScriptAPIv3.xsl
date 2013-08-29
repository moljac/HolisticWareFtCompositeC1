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
## Composite C1 Google Maps Javascript API v.3 implementation
	
*	name:  
	HolisticWare.Layout.Maps.Google.JavaScriptAPIv3.xsl
*	namespace:  
	HolisticWare.Layout.Maps.Google
*	description:  
	Google Maps implementation based on iframe
*	url refrences  
	sample:			[]()  
	documentation:	[https://developers.google.com/maps/documentation/javascript/](https://developers.google.com/maps/documentation/javascript/)
*	author:   		
	HolisticWare,   [http://holisticware.net](http://holisticware.net)
	Miljenko Cvjetko
*	licence:   
	MIT [http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT)
	
	
### html sample (starting point)

	
### Usage

Composite C1 - Function

	  <f:function 
			name="HolisticWare.Maps.Google.JavaScriptAPIv3" 
			xmlns:f="http://www.composite.net/ns/function/1.0"
			>
			<f:param name="Debug" value="false" />			
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
*	JavascriptCustomizationsExternalFile: string
	Default value = ""
	Javascript file (external) for customizations of Google Map
*	JavascriptCustomizationsInline: string
	Default value = ""
	Javascript code (inline) for customizations of Google Map

===============================================================================
Docummentation.MarkDown.End
-->

  <xsl:param name="Debug" select="/in:inputs/in:param[@name='Debug']" />
  <xsl:param name="debug" select="translate($Debug,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="Width" select="/in:inputs/in:param[@name='Width']" />
  <xsl:param name="width" select="translate($Width,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="Height" select="/in:inputs/in:param[@name='Height']" />
  <xsl:param name="height" select="translate($Height,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="Latitude" select="/in:inputs/in:param[@name='Latitude']" />
  <xsl:param name="latitude" select="translate($Latitude,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="Longitude" select="/in:inputs/in:param[@name='Longitude']" />
  <xsl:param name="longitude" select="translate($Longitude,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="JavascriptCustomizationsExternalFile" select="/in:inputs/in:param[@name='JavascriptCustomizationsExternalFile']" />
  <xsl:param name="javascript_customizations_external_file" select="translate($JavascriptCustomizationsExternalFile,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="JavascriptCustomizationsInline" select="/in:inputs/in:param[@name='JavascriptCustomizationsInline']" />
  <xsl:param name="javascript_customizations_inline" select="translate($JavascriptCustomizationsInline,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />
  
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

		
		<div id="map_canvas" style="width: 100%; height: 500px">
		  <!-- google map goes here -->
		</div>

		<!--
		  Optimization.Speed:
		  Javascript at the end before closing <body> tag in order to defer javascript loading
		  and executing (non html generating javascript).
		-->
		<script type="text/javascript" src="~/js/google-maps-javascript-api-v3-initialization.max.js"/>
		<script type="text/javascript" src="~/js/google-maps-javascript-api-v3-holisticware-initialization.max.js"/>
		<script type="text/javascript" src="~/js/google-maps-javascript-api-v3-holisticware-marker-polygon.max.js"/>
		<script type="text/javascript" src="~/js/google-maps-javascript-api-v3-holisticware-marker-array.max.js"/>

	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>

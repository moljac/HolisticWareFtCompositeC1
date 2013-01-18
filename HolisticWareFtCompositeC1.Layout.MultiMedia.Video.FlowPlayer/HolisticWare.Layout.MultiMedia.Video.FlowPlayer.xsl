<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:in="http://www.composite.net/ns/transformation/input/1.0"
  xmlns:lang="http://www.composite.net/ns/localization/1.0"
  xmlns:f="http://www.composite.net/ns/function/1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="xsl in lang f"
  >

  <!--
  XSLT function to transform any Composite C1 placeholder into 960gs grid
  function call: 
  
  http://flowplayer.org/
  http://flowplayer.org/demos/configuration/index.html  
  http://www.henrikbrinch.dk/Blog/2012/02/16/Integrating-FlowPlayer-in-Composite-C1

    <f:function 
    name="HolisticWare.Layout.CSSFrameworksGridSystems.GridSystem960gsParameterized" 
    xmlns:f="http://www.composite.net/ns/function/1.0">
    <f:param name="UrlVideoClip" value="http://" />
    <f:param name="CssClass" value="player" />
    <f:param name="CssId" value="player" />
    <f:param name="CssStyle" value="" />
    </f:function>

 -->

  <xsl:param name="UrlVideoClip" select="/in:inputs/in:param[@name='UrlVideoClip']" />
  <xsl:param name="CssClass" select="/in:inputs/in:param[@name='CssClass']" />
  <xsl:param name="CssId" select="/in:inputs/in:param[@name='CssId']" />
  <xsl:param name="CssStyle" select="/in:inputs/in:param[@name='CssStyle']" />

  <xsl:template match="/">
  <html>
    <head>
    <!-- markup placed here will be shown in the head section of the rendered page -->
    </head>

    <body>
    <!-- markup placed here will be the output of this rendering -->
    <div>
      Value of input parameter 'TestParam':
      <xsl:value-of select="/in:inputs/in:param[@name='UrlVideoClip']" />
    </div>

    <a
      href="{$UrlVideoClip}"
      class="{$CssClass}"
      id="{$CssId}"
      style="{$CssStyle}"
    >
    </a>


    <!-- flowplayer javascript component -->
    <!--
    <script  type="text/javascript" src="http://releases.flowplayer.org/js/flowplayer-3.2.11.min.js"/>
    -->
    <script type="text/javascript" src="~/js/flowplayer-3.2.11.min.js"/>
    <script type="text/javascript" src="~/js/flowplayer-customization.js" />
    </body>
  </html>
  </xsl:template>

</xsl:stylesheet>


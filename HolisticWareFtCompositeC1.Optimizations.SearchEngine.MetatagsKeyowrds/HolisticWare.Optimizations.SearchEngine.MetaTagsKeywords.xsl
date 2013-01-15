<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:in="http://www.composite.net/ns/transformation/input/1.0"
  xmlns:lang="http://www.composite.net/ns/localization/1.0"
  xmlns:f="http://www.composite.net/ns/function/1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="xsl in lang f">

  <xsl:variable name="KeywordsAdditional" select="/in:inputs/in:param[@name='KeywordsAdditional']/text()" />
  <xsl:variable name="AuthorsAdditional"  select="/in:inputs/in:param[@name='AuthorsAdditional']/text()" />
  <xsl:variable name="Language"           select="/in:inputs/in:param[@name='Language']/text()" />
  <xsl:variable name="Date"               select="/in:inputs/in:param[@name='Date']/text()" />
  <xsl:variable name="Copyright"          select="/in:inputs/in:param[@name='Copyright']/text()" />
  <xsl:variable name="LastModified"       select="/in:inputs/in:param[@name='LastModified']/text()" />
  <xsl:variable name="CacheControl"       select="/in:inputs/in:param[@name='CacheControl']/text()" />
  <xsl:variable name="Robots"             select="/in:inputs/in:param[@name='Robots']/text()" />
    
  <xsl:variable name="Author"             select="/in:inputs/in:param[@name='AuthorsAdditional']/text()" />
  <xsl:variable name="Publisher"          select="/in:inputs/in:param[@name='AuthorsAdditional']/text()" />
  <xsl:variable name="Contributor"        select="/in:inputs/in:param[@name='AuthorsAdditional']/text()" />

  
    <xsl:template match="/">
    <html>
      <head>
        <!-- markup placed here will be shown in the head section of the rendered page -->
        <!--
        Already rendered through rendering:page.metatag.description in the Properties-Settings of the page!
        <meta name="description" content=""/>
        -->
        <meta name="keywords" content="HolisticWare, {$KeywordsAdditional}" />
        <meta name="author" content="HolisticWare, {$AuthorsAdditional}" />
        <meta http-equiv="content-language" content="{$Language}" />
        <meta name="language" content="{$Language}" />
        <meta name="date" content="{$Date}" />
        <meta name="copyright" content="{$Copyright}" />
        <meta http-equiv="last-modified" content="{$LastModified}" />
        <meta http-equiv="cache-control" content="{$CacheControl}" />        
        <meta name="robots" content="{$Robots}" />
        
        <!-- GeoTagging -->
        <meta name="geo.position" content="45.784689;15.96439" />
        <meta name="geo.placename" content="IX Juzna Obala, Kajzerica, Zagreb, Croatia" />
        <meta name="geo.region" content="hr-01" />

        <!-- Dublin Core -->
        <meta name="DC.Title" content="Title" />
        <meta name="DC.Creator" content="{$Author}" />
        <meta name="DC.Subject" content="Subject" />
        <meta name="DC.Description" content="Description" />
        <meta name="DC.Publisher" content="{$Publisher}" />
        <meta name="DC.Contributor" content="{$Contributor}" />
        <meta name="DC.Date" content="{$Date}" />
        <meta name="DC.Type" content="HolisticWare Wiki/Know-How writeup" />
        <meta name="DC.Format" content="[x]html" />
        <meta name="DC.Identifier" content="HolisticWare WriteUp" />
        <meta name="DC.Source" content="HolisticWare " />
        <meta name="DC.Language" content="{$Language}" />
        <meta name="DC.Relation" content="HolisticWare" />
        <meta name="DC.Coverage" content="HolisticWare" />
        <meta name="DC.Rights" content="Open Source" />

      </head>

      <body>
        <!-- markup placed here will be the output of this rendering -->
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:in="http://www.composite.net/ns/transformation/input/1.0"
  xmlns:lang="http://www.composite.net/ns/localization/1.0"
  xmlns:f="http://www.composite.net/ns/function/1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="xsl in lang f">

  <xsl:variable name="UriImage"  select="/in:inputs/in:param[@name='UriImage']/text()" />

  <xsl:template match="/">
    <html>
      <head>
        <style type="text/css">
          <xsl:text>div#splash {background-image: url("</xsl:text>
          <xsl:value-of select="/in:inputs/in:param[@name='UriImage']" />
          <xsl:text>") }</xsl:text> 
        </style>
      </head>

      <body>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:in="http://www.composite.net/ns/transformation/input/1.0"
  xmlns:lang="http://www.composite.net/ns/localization/1.0"
  xmlns:f="http://www.composite.net/ns/function/1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="xsl in lang f">

  <xsl:template match="/">
    <html>
      <head>
        <!-- markup placed here will be shown in the head section of the rendered page -->
      </head>

      <body>
        <!-- markup placed here will be the output of this rendering -->
        <!--
        <div>
          Value of input parameter 'TestParam': 
          <xsl:value-of select="/in:inputs/in:param[@name='Input parameter name']" />
        </div>
        <div>
          Value of function call 'TestCall': 
          <xsl:value-of select="/in:inputs/in:result[@name='Function call local name']" />
        </div>
        -->
        
        <script src="/js/quantcast.js" type="text/javascript"></script>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>

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
        
        <!-- 
        JavaScript for generating mailto (email)tags
        1. uncompressed for development/debugging
        2. compressed deployment
        3. pre-load script use
        TODO:
        multiple inclusions
        -->
        <!--
        <script type="text/javascript"   src="/js/SpamProtection.uncompressed.20110318.js" />
        <script type="text/javascript"   src="/js/SpamProtection.20110318.js" />
        -->
        <script type="text/javascript"   src="/js/hw_pre_20110325.js"/>
      </head>
      <body>
        <!-- markup placed here will be the output of this rendering -->
        <script type="text/javascript" >    
			  e_post
				(
				"<xsl:value-of select="/in:inputs/in:param[@name='User']" />"
				, new Array
				  (
				<xsl:value-of select="/in:inputs/in:param[@name='Server']" />
				  )
				, "<xsl:value-of select="/in:inputs/in:param[@name='Subject']" />"
				, "<xsl:value-of select="/in:inputs/in:param[@name='CC']" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />"
				, "<xsl:value-of select="/in:inputs/in:param[@name='BCC']" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />"
				, "<xsl:value-of select="/in:inputs/in:param[@name='Body']" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />"
				, "<xsl:value-of select="/in:inputs/in:param[@name='Display']" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />"
				);
		</script>
		</body>
    </html>
  </xsl:template>
</xsl:stylesheet>

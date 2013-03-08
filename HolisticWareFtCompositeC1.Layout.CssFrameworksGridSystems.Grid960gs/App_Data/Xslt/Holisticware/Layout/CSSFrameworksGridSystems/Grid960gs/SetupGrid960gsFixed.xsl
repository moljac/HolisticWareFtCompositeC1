<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:in="http://www.composite.net/ns/transformation/input/1.0"
	xmlns:lang="http://www.composite.net/ns/localization/1.0"
	xmlns:f="http://www.composite.net/ns/function/1.0"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="xsl in lang f">

  <!--	
===============================================================================
# grid system 960gs - fixed #

* 	url:		
	[http://960.gs/](http://960.gs/)
* 	author: 	
	Nathan Smith	
*	Name:		  
	SetupFixed		
* 	Namespace:	  
	HolisticWareFtCompositeC1.Layout.CSSFrameworksGridSystems.Grid960gs
*	Description:  
	960gs fixed layout 12, 16, 24 columns by Nathan Smith

## Prerequisites ##

Composite C1 packages:

1.

## Installation ##

Deployment type

1. xcopy  
	1. 	copy folders into Website or WebApplication root   
		js/   
		css/   
2.  Packages Composite C1
	1. 
	

## Usage ##

Composite C1 XSLT function - Parameterized function to setup grid system:

	<f:function 
		name="HolisticWare.Layout.CSSFrameworksGridSystems.Grid960gs.SetupGrid960gsFixed" 
		xmlns:f="http://www.composite.net/ns/function/1.0"
		>
		<f:param name="NumberOfColumns" value="16" />
		<f:param name="RightToLeft" value="False" />
		<f:param name="PageSpeedOptimized" value="True" />
	</f:function>

Parameter description

*	Number of columns:  12 | 16 | 24  
	Default value = 16  
	if number is wrong function loads 960gs.css 
	for 12 and 16 column and sets 16 as default
* 	RightToLeft:		  false  
	default is left to right layout
	images resized -  not necessary for fixed layouts, but to be cool!  
* 	PageSpeedOptimized: true | false  
	Default value = true
	Optimization for PageSpeed turned on
===============================================================================
-->

	<xsl:param name="NumberOfColumns" select="/in:inputs/in:param[@name='NumberOfColumns']" />
	<xsl:param name="numberofcolumns" select="translate($NumberOfColumns,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

	<xsl:param name="RightToLeft" select="/in:inputs/in:param[@name='RightToLeft']" />
	<xsl:param name="righttoleft" select="translate($RightToLeft,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

	<xsl:param name="ResizableObjects" select="/in:inputs/in:param[@name='ResizableObjects']" />
	<xsl:param name="resizableobjects" select="translate($ResizableObjects,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

	<xsl:param name="PageSpeedOptimized" select="/in:inputs/in:param[@name='PageSpeedOptimized']" />
	<xsl:param name="pagespeedoptimized" select="translate($PageSpeedOptimized,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />
	
	<xsl:variable name="suffix_css_pagespeedoptimized">
	  <xsl:choose>
		<xsl:when test="($pagespeedoptimized='false')">.max.css</xsl:when>
		<xsl:otherwise>.css</xsl:otherwise>
	  </xsl:choose>
	</xsl:variable>
	
	<xsl:variable name="suffix_js_pagespeedoptimized">
	  <xsl:choose>
		<xsl:when test="($pagespeedoptimized='false')">.max.js</xsl:when>
		<xsl:otherwise>.js</xsl:otherwise>
	  </xsl:choose>
	</xsl:variable>

  <xsl:variable name="filename_part_columns_number">
	<xsl:choose>
	  <xsl:when test="($numberofcolumns='12')">12</xsl:when>
	  <xsl:when test="($numberofcolumns='24')">24</xsl:when>
	  <xsl:otherwise>16</xsl:otherwise>
	</xsl:choose>
  </xsl:variable>

  <xsl:variable name="filename_part_righttoleft">
	<xsl:choose>
	  <xsl:when test="($righttoleft='false')"></xsl:when>
	  <xsl:otherwise>_rtl</xsl:otherwise>
	</xsl:choose>
  </xsl:variable>

  <xsl:variable
	name="filename_960gs_NN_col_RTL_css"
	select = "concat('~/css/fixed/960_', $filename_part_columns_number, '_col', $filename_part_righttoleft, '.css')"
	>
  </xsl:variable>

  <xsl:variable
	name="filename_960gs_RTL_css"
	select = "concat('~/css/fixed/960', $filename_part_righttoleft, '.css')"
	>
  </xsl:variable>

  <!--
	For layout customization!
	Old obsolete! Not possible due to implementation limitations in Composite C1!
	<xsl:param name="layoutdefinitionfunction" select="/in:inputs/in:param[@name='LayoutDefinitionFunction']" />
-->
  <xsl:template match="/">	
	<html>
	  <head>
		<link 
			rel="stylesheet" type="text/css" media="screen"
			href="~/css/fixed/reset.css"
			/>
		<link
			rel="stylesheet" type="text/css" media="screen"
			href="~/css/fixed/text.css"
			/>
		<link
			rel="stylesheet" type="text/css" media="screen"
			href="{$filename_960gs_NN_col_RTL_css}" 
			/>
		<link
			rel="stylesheet" type="text/css" media="screen"
			href="{$filename_960gs_RTL_css}" 
			/>
	  </head>
	  <body>

		<div class="container_{$filename_part_columns_number}">
		  <!--
			Define 960gs here
		  -->
		</div>
	  </body>
	  </html>	
  </xsl:template>
</xsl:stylesheet>

		<!--
		===========================================================================================
		Debug
		<div>
		  numberofcolumns=<xsl:value-of select="($numberofcolumns)" />
		  <br/>
		  < !--
		  Works!!!
		  -- >
		  filename_part_columns_number=<xsl:value-of select="($filename_part_columns_number)" />
		  <br/>
		  < !--
		  Does not work -  reading parameters inside xsl:template - only variables 
		  empty!!!
		  -- >
		  PageSpeedOptimized=<xsl:value-of select="/in:inputs/in:result[@name='PageSpeedOptimized']" />
		  <br/>
		  pagespeedoptimized=<xsl:value-of select="($pagespeedoptimized)" />
		  <br/>
		  suffix_js_pagespeedoptimized=<xsl:value-of select="($suffix_js_pagespeedoptimized)" />
		  <br/>
		  suffix_css_pagespeedoptimized=<xsl:value-of select="($suffix_css_pagespeedoptimized)" />
		  <br/>
		  ResizableObjects=<xsl:value-of select="/in:inputs/in:param[@name='ResizableObjects']" />
		  <br/>
		  filename_960gs_NN_col_RTL=<xsl:value-of select="($filename_960gs_NN_col_RTL_css)" />
		</div>
		===========================================================================================
		-->
<!--	
		<xsl:if test="$ResizaBleObjects='true'">
		  <xsl:choose>
			<xsl:when test="$pagespeedoptimized='false'">
			  <script
				type="text/javascript"
				src="~/holisticware/media/image-resizer/img-resizer.js"
			  >
			  </script>
			</xsl:when>
			<xsl:otherwise>
			</xsl:otherwise>
		  </xsl:choose>
		</xsl:if>
-->

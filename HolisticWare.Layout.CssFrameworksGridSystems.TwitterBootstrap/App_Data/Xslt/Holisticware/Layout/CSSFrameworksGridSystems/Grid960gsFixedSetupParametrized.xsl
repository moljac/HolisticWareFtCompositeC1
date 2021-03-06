﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:in="http://www.composite.net/ns/transformation/input/1.0"
	xmlns:lang="http://www.composite.net/ns/localization/1.0"
	xmlns:f="http://www.composite.net/ns/function/1.0"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="xsl in lang f">

  <!--	
	grid system 960gs - fixed
	url:		http://960.gs/
	author: 	Nathan Smith
	
	Name:		  Grid960gsFixedSetupParametrized
	Namespace:	  HolisticWare.Layout.CSSFrameworksGridSystems
	Description:  960gs fixed layout 12, 16, 24 columns by Nathan Smith
	
	Parameterized function to setup grid system:
	<f:function 
		name="HolisticWare.Layout.CSSFrameworksGridSystems.GridSystem960gsFixedSetup" 
		xmlns:f="http://www.composite.net/ns/function/1.0"
		>
		<f:param name="NumberOfColumns" value="16" />
		<f:param name="RightToLeft" value="False" />
		<f:param name="ResizableImages" value="True" />
		<f:param name="PageSpeedOptimized" value="True" />
	</f:function>
	
	Parameter description:
	  Number of columns:  12 | 16 | 24
						  Default value = 16
						  if number is wrong function loads 960gs.ccs 
						  for 12 and 16 column and sets 16 as default
	  RightToLeft:		  false
						  default is left to right layout
	  ResizableImages:	  true | false
						  Default value = true
						  images resized -  not necessary for fixed layouts, but to be cool!
	  PageSpeedOptimized: true | false
						  Default value = true
						  Optimization for PageSpeed turned on
-->

  <xsl:param name="NumberOfColumns" select="/in:inputs/in:param[@name='NumberOfColumns']" />
  <xsl:param name="numberofcolumns" select="translate($NumberOfColumns,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="RightToLeft" select="/in:inputs/in:param[@name='RightToLeft']" />
  <xsl:param name="righttoleft" select="translate($RightToLeft,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="ResizableImages" select="/in:inputs/in:param[@name='ResizableImages']" />
  <xsl:param name="resizableimages" select="translate($ResizableImages,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <xsl:param name="PageSpeedOptimized" select="/in:inputs/in:param[@name='PageSpeedOptimized']" />
  <xsl:param name="pagespeedoptimized" select="translate($PageSpeedOptimized,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />

  <!--
		For layout customization!
		Old obsolete! Not possible due to implementation limitations in Composite C1!
	<xsl:param name="layoutdefinitionfunction" select="/in:inputs/in:param[@name='LayoutDefinitionFunction']" />
	-->


  <xsl:template match="/">
	<html>
	  <head>
		<!-- markup placed here will be shown in the head section of the rendered page -->
		<xsl:choose>
		  <xsl:when test="$pagespeedoptimized='false'">
			<link
				rel="stylesheet"
				type="text/css"
				media="screen"
				href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/reset.css"
						/>
			<link
				rel="stylesheet"
				type="text/css"
				media="screen"
				href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/text.css"
						/>
			<xsl:choose>
			  <xsl:when test="($numberofcolumns='12')">
				<xsl:choose>
				  <xsl:when test="($righttoleft='false')">
					<link
						rel="stylesheet"
						type="text/css"
						media="screen"
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/960_12_col.css"
									/>
				  </xsl:when>
				  <xsl:otherwise>
					<link
						rel="stylesheet"
						type="text/css"
						media="screen"
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/960_12_col_rtl.css"
									/>
				  </xsl:otherwise>
				</xsl:choose>
			  </xsl:when>
			  <xsl:when test="($numberofcolumns='16')">
				<xsl:choose>
				  <xsl:when test="($righttoleft='false')">
					<link
						rel="stylesheet"
						type="text/css"
						media="screen"
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/960_16_col.css"
								/>
				  </xsl:when>
				  <xsl:otherwise>
					<link
						rel="stylesheet"
						type="text/css"
						media="screen"
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/960_16_col_rtl.css"
							/>
				  </xsl:otherwise>
				</xsl:choose>
			  </xsl:when>
			  <xsl:when test="($numberofcolumns='24')">
				<xsl:choose>
				  <xsl:when test="($righttoleft='false')">
					<link
						rel="stylesheet"
						type="text/css"
						media="screen"
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/960_24_col.css"
								/>
				  </xsl:when>
				  <xsl:otherwise>
					<link
						rel="stylesheet"
						type="text/css"
						media="screen"
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/960_24_col_rtl.css"
							/>
				  </xsl:otherwise>
				</xsl:choose>
			  </xsl:when>
			  <xsl:otherwise>
				<xsl:choose>
				  <xsl:when test="($righttoleft='false')">
					<link
						rel="stylesheet"
						type="text/css"
						media="screen"
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/960.css"
								/>
				  </xsl:when>
				  <xsl:otherwise>
					<link
						rel="stylesheet"
						type="text/css"
						media="screen"
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fixed/css/960_rtl.css"
							/>
				  </xsl:otherwise>
				</xsl:choose>
			  </xsl:otherwise>
			</xsl:choose>
		  </xsl:when>
		  <xsl:when test="$pagespeedoptimized='true'">
		  </xsl:when>
		</xsl:choose>
	  </head>
	  <body>




		
		<xsl:if test="$resizableimages='true'">
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
	  </body>
	  </html>	
  </xsl:template>
</xsl:stylesheet>

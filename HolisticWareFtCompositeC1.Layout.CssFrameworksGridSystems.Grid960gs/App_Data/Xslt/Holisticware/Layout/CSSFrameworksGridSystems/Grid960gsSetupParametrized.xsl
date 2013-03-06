<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:in="http://www.composite.net/ns/transformation/input/1.0"
	xmlns:lang="http://www.composite.net/ns/localization/1.0"
	xmlns:f="http://www.composite.net/ns/function/1.0"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="xsl in lang f">

<!--
	XSLT function to transform any Composite C1 placeholder into 960gs grid
	function call: 
	
	  <f:function 
		name="HolisticWare.Layout.CSSFrameworksGridSystems.GridSystem960gsParameterized" 
		xmlns:f="http://www.composite.net/ns/function/1.0">
		<f:param name="NumberOfColumns" value="16" />
		<f:param name="LayoutType" value="Fluid" />
		<f:param name="JavaScriptLibrary" value="JQuery" />
		<f:param name="PageSpeedOptimized" value="True" />
		<f:param name="ResizableImages" value="True" />
	  </f:function>

		used for templating but abandoned because of implementation limitations
		(next atempt is with master pages and user control functions
		<f:param name="LayoutDefinitionFunction" value="" />
	
-->
	<xsl:param name="NumberOfColumns" select="/in:inputs/in:param[@name='NumberOfColumns']" />
	<xsl:param name="LayoutType" select="/in:inputs/in:param[@name='LayoutType']" />
	<xsl:param name="JavaScriptLibrary" select="/in:inputs/in:param[@name='JavaScriptLibrary']" />
	<xsl:param name="ResizableImages" select="/in:inputs/in:param[@name='ResizableImages']" />
	<xsl:param name="PageSpeedOptimized" select="/in:inputs/in:param[@name='PageSpeedOptimized']" />

	<xsl:param name="numberofcolumns" select="translate($NumberOfColumns,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />
	<xsl:param name="layouttype" select="translate($LayoutType,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />
	<xsl:param name="javascriptlibrary" select="translate($JavaScriptLibrary,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />
	<xsl:param name="resizableimages" select="translate($ResizableImages,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')" />
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
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/reset.css" 
						/>
					<link 
						rel="stylesheet" 
						type="text/css" 
						media="screen" 
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/text.css"  
						/>
					<xsl:choose>
						<xsl:when test="$layouttype='fixed'">
							<link 
								rel="stylesheet" 
								type="text/css" 
								media="screen" 
								href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/960_fixed.css" 
								/>
							<link 
								rel="stylesheet" 
								type="text/css" 
								media="screen" 
								href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/960_fixed.ie.css" 
								/>
								<link 
									rel="stylesheet" 
									type="text/css" 
									media="screen" 
									href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/ie6.css" 
									/>
								<link 
									rel="stylesheet" 
									type="text/css" 
									media="screen" 
									href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/ie.css" 
									/>

							<!--[if IE lte 6]>
								<link 
									rel="stylesheet" 
									type="text/css" 
									media="screen" 
									href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/ie6.css" 
									/>
							<![endif]-->
							<!--[if IE gt 6]>
								<link 
									rel="stylesheet" 
									type="text/css" 
									media="screen" 
									href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/ie.css" 
									/>
							<![endif]-->
						</xsl:when>
						<xsl:otherwise>
							<link 
								rel="stylesheet" 
								type="text/css" 
								media="screen" 
								href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/960_fluid.css" 
								/>
							<!--[if IE lte 6]>
								<link 
									rel="stylesheet" 
									type="text/css" 
									media="screen" 
									href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/960_fluid.ie6.css" 
									/>
							<![endif]-->
							<!--[if IE gt 6]>
								<link 
									rel="stylesheet" 
									type="text/css" 
									media="screen" 
									href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/960_fluid.ie.css" 
									/>
							<![endif]-->
						</xsl:otherwise>
					</xsl:choose>
					<link 
						rel="stylesheet" 
						type="text/css" 
						media="screen" 
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/layout.css" 
						/>
						<link 
							rel="stylesheet" 
							type="text/css" 
							media="screen" 
							href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/layout.ie.css" 
							/>
					<link 
						rel="stylesheet" 
						type="text/css" 
						media="screen" 
						href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/nav.css" 
						/>
					<!--[if IE gt 6]>
						<link 
							rel="stylesheet" 
							type="text/css" 
							media="screen" 
							href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/960_fluid.ie.css" 
							/>
						<link 
							rel="stylesheet" 
							type="text/css" 
							media="screen" 
							href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css/960_fluid_tables.ie.css" 
							/>
					<![endif]-->
				</xsl:when>
				<xsl:otherwise>
					<xsl:choose>
						<xsl:when test="$layouttype='fixed'">
							<link 
								rel="stylesheet" 
								type="text/css" 
								media="screen" 
								href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css-optimized-pagespeed/holisticware_960gs_fixed.css.yc.css" 
								/>
						</xsl:when>
						<xsl:otherwise>
							<link 
								rel="stylesheet" 
								type="text/css" 
								media="screen" 
								href="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/css-optimized-pagespeed/holisticware_960gs_fluid.css.yc.css" 
								/>
						</xsl:otherwise>
					</xsl:choose>

					<!--[if IE lte 6]>
						<link 
							rel="stylesheet" 
							type="text/css" 
							media="screen" 
							href="~/holisticware/layout/css-frameworks-grid-systems/PageSpeed/holisticware_960gs_ie6.css.yc.css" 
							/>
					<![endif]-->
					<!--[if IE gt  6]>
						<link 
							rel="stylesheet" 
							type="text/css" 
							media="screen" 
							href="~/holisticware/layout/css-frameworks-grid-systems/PageSpeed/holisticware_960gs_ie.css.yc.css" 
							/>
					<![endif]-->
				</xsl:otherwise>
			</xsl:choose>		
		</head>

		<body>   
			<!-- markup placed here will be the output of this rendering -->

			<!--
			Cannot be used
			<rendering:placeholder id="content" title="Content" default="true" />
			<f:function 
				name="HolisticWare.Layout.CSSFrameworksGridSystems.Rendering.Placeholder"
				xmlns:f="http://www.composite.net/ns/function/1.0"
			>
				<f:param name="PlaceholderName" value="something"></f:param>
			</f:function>
			 -->

			
			<!-- 
			Debug
			
			<div>
			Value of input parameter 'NumberOfColumns':
				<br />
				InParam[NumberOfColumns]=<xsl:value-of select="/in:inputs/in:param[@name='NumberOfColumns']" />
				<br />
				param[NumberOfColumns]=<xsl:value-of select="$NumberOfColumns" />
				<br />
				param[numberofcolumns]=<xsl:value-of select="$numberofcolumns" />
			</div>
			<div>
			Value of input parameter 'LayoutType':
				<br />
				InParam[LayoutType]=<xsl:value-of select="/in:inputs/in:param[@name='LayoutType']" />
				<br />
				param[LayoutType]=<xsl:value-of select="$LayoutType" />
				<br />
				param[layouttype]=<xsl:value-of select="$layouttype" />
			</div>
			<div>
			Value of input parameter 'JavaScriptLibrary':
				<br />
				InParam[JavaScriptLibrary]=<xsl:value-of select="/in:inputs/in:param[@name='JavaScriptLibrary']" />
				<br />
				param[JavaScriptLibrary]=<xsl:value-of select="$JavaScriptLibrary" />
				<br />
				param[javascriptlibrary]=<xsl:value-of select="$javascriptlibrary" />
			</div>
			<div>
			Value of input parameter 'PageSpeedOptimized':
				<br />
				InParam[PageSpeedOptimized]=<xsl:value-of select="/in:inputs/in:param[@name='PageSpeedOptimized']" />
				<br />
				param[PageSpeedOptimized]=<xsl:value-of select="$PageSpeedOptimized" />
				<br />
				param[pagespeedoptimized]=<xsl:value-of select="$pagespeedoptimized" />
			</div>
			-->
		
			<!-- 
				960gs layout Container definition!! Number of columns 
				
				Moved to Page Template definition to avoid errors and cnofusion!
			-->
			<!--
			<xsl:choose>
				<xsl:when test="$numberofcolumns='12'">
					<div class="container_12">

						<!==
						Cannot be used
						<rendering:placeholder id="content" title="Content" default="true" />
						 ==>
						<f:function 
							name="HolisticWare.Layout.CSSFrameworksGridSystems.Rendering.Placeholder"
							xmlns:f="http://www.composite.net/ns/function/1.0"
						>
							<f:param name="PlaceHolderName" value="something"></f:param>
						</f:function>
		
						<xsl:comment>
						Put Content placeholders here
						</xsl:comment>
						<xsl:comment ><![CDATA[
						 <rendering:placeholder id="content" title="Content" default="true" />
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
						Sample 1
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
							Define only Content here:
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
							then in Content Pages in Placeholder Content use 960gs markup styles:
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
								<div class="grid_12">
								</div>
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
						Sample 2
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
							Define Your Layout here:
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
							 <div class="grid_12">
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
							 <rendering:placeholder id="header" title="Header" default="false" />
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
								</div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
								<div class="clear"></div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
								<div class="grid_4">
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
								<rendering:placeholder id="centerleft" title="Center Left" default="false" />
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						</div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<div class="grid_8">
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<rendering:placeholder id="centerright" title="Center Right" default="true" />
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						</div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<div class="clear"></div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<div class="grid_12">
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<rendering:placeholder id="footer" title="Footer" default="false" />
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						</div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						 <div class="clear"></div>
						]]>
						</xsl:comment>
						<xsl:comment >
						then in Content pages use 960gs markup in placeholders!
						</xsl:comment>

						<xsl:choose>
							<xsl:when test="$layoutdefinitionfunction='Layout960gsGridWithSingleContentPlaceholder' or $layoutdefinitionfunction=''">
								<f:function 
									name="HolisticWare.Layout.CSSFrameworksGridSystems.Layout960gsGridWithSingleContentPlaceholder" 
									xmlns:f="http://www.composite.net/ns/function/1.0"							
								>
							<f:param name="PlaceHolderName" value="something"></f:param>
								</f:function>								
							</xsl:when>
							<xsl:otherwise>
								<xsl:variable name="concatenatedString"><xsl:value-of select="$layoutdefinitionfunction"/></xsl:variable>
								<f:function 
									name="{$concatenatedString}" 
									xmlns:f="http://www.composite.net/ns/function/1.0"
									>
								</f:function>
							</xsl:otherwise>
						</xsl:choose>
					</div>
							
				</xsl:when>
				<xsl:otherwise>
					<div class="container_16">
					
						<!==
						Cannot be used
						<rendering:placeholder id="content" title="Content" default="true" />
						==>


						<xsl:comment>
						Put Content placeholders here
						</xsl:comment>
						<xsl:comment ><![CDATA[
						 <rendering:placeholder id="content" title="Content" default="true" />
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
						Sample 1
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
							Define only Content here:
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
							then in Content Pages in Placeholder Content use 960gs markup styles:
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
								<div class="grid_16">
								</div>
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
						Sample 2
						]]></xsl:comment>
						<xsl:comment ><![CDATA[
							Define Your Layout here:
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
							 <div class="grid_16">
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
							 <rendering:placeholder id="header" title="Header" default="false" />
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
								</div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
								<div class="clear"></div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
								<div class="grid_4">
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
								<rendering:placeholder id="centerleft" title="Center Left" default="false" />
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						</div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<div class="grid_12">
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<rendering:placeholder id="centerright" title="Center Right" default="true" />
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						</div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<div class="clear"></div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<div class="grid_16">
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						<rendering:placeholder id="footer" title="Footer" default="false" />
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						</div>
						]]></xsl:comment>
						<xsl:comment><![CDATA[              
						 <div class="clear"></div>
						]]>
						</xsl:comment>
						<xsl:comment >
						then in Content pages use 960gs markup in placeholders!
						</xsl:comment>

						<xsl:choose>
							<xsl:when test="$layoutdefinitionfunction='Layout960gsGridWithSingleContentPlaceholder' or $layoutdefinitionfunction=''">
								<f:function 
									name="HolisticWare.Layout.CSSFrameworksGridSystems.Layout960gsGridWithSingleContentPlaceholder" 
									xmlns:f="http://www.composite.net/ns/function/1.0"
									>
								</f:function>
							</xsl:when>
							<xsl:otherwise>
								<xsl:variable name="concatenatedString"><xsl:value-of select="$layoutdefinitionfunction"/></xsl:variable>
								<f:function 
									name="{$concatenatedString}" 
									xmlns:f="http://www.composite.net/ns/function/1.0"
									>
								</f:function>
							</xsl:otherwise>
						</xsl:choose>						
					</div>
				</xsl:otherwise>
			</xsl:choose>
			-->
		
			<xsl:choose>
				<xsl:when test="$pagespeedoptimized='false'">
					<xsl:choose>
						<xsl:when test="$javascriptlibrary='none'">
						</xsl:when>
						<xsl:when test="$javascriptlibrary='mootools'">
							<script 
								type="text/javascript" 
								src="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/js/mootools-core-1.4.0-full-nocompat-yc.js"
								>
							</script> 
							<script 
								type="text/javascript" 
								src="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/js/mootools-1.2-more.js"
								>
							</script> 
							<script 
								type="text/javascript" 
								src="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/js/mootools-fluid16-autoselect.js"
								>
							</script> 
						</xsl:when>
						<xsl:otherwise>
							<script 
								type="text/javascript" 
								src="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/js/jquery-1.6.4.min.js"
								>
							</script>
							<script 
								type="text/javascript" 
								src="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/js/jquery-ui.js"
								>
							</script>
							<script 
								type="text/javascript" 
								src="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/js/jquery-fluid16.js"
								>
							</script>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<xsl:otherwise>
					<xsl:choose>
						<xsl:when test="$javascriptlibrary='none'">
						</xsl:when>
						<xsl:when test="$javascriptlibrary='mootools'">
							<script 
								type="text/javascript" 
								src="/holisticware/layout/css-frameworks-grid-systems/960gs/js-optimized-pagespeed/holisticware_post_960gsfluid_mootools.js.yc.js"
								>
							</script>
						</xsl:when>
						<xsl:otherwise>
							<script 
								type="text/javascript" 
								src="~/holisticware/layout/css-frameworks-grid-systems/960gs-fluid/js-optimized-pagespeed/holisticware_post_960gsfluid_jquery.js.yc.js"
								>
							</script>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:otherwise>
			</xsl:choose>
		

			<xsl:choose>
				<xsl:when test="$resizableimages='true'">
					<script 
						type="text/javascript" 
						src="~/holisticware/media/image-resizer/img-resizer.js"
						>
					</script>		
				</xsl:when>
				<xsl:otherwise>
				</xsl:otherwise>
			</xsl:choose>
	
		</body>
</html>
</xsl:template>

</xsl:stylesheet>

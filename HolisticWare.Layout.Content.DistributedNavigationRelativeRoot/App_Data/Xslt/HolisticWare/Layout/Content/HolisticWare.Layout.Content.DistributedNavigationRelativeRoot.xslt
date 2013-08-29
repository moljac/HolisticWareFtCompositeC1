<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:in="http://www.composite.net/ns/transformation/input/1.0"
	xmlns:lang="http://www.composite.net/ns/localization/1.0"
	xmlns:f="http://www.composite.net/ns/function/1.0"
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
	xmlns:user="urn:my-scripts"
	exclude-result-prefixes="xsl in lang f">

  <!--
Docummentation.MarkDown.Begin
===============================================================================
HolisticWare.Layout.Content.DistributedNavigationRelativeRoot.xslt

http://www.west-wind.com/weblog/posts/2009/Dec/21/Making-Sense-of-ASPNET-Paths


http://compositec1.codeplex.com/discussions/249128
http://compositec1.codeplex.com/discussions/260947
http://docs.composite.net/ASP-NET/Handling-URLs


===============================================================================
Docummentation.MarkDown.End
-->

  <msxsl:script language="C#" implements-prefix="user">
	<msxsl:assembly name="System.Web" />
	<msxsl:assembly name="System.Configuration" />
	<msxsl:assembly name="Composite" />

	<msxsl:using namespace="System.Web" />
	<msxsl:using namespace="Composite.Core" />
	<msxsl:using namespace="Composite.Data" />


	<![CDATA[
		public string CompositeUrlBuilder()
		{
			HttpContext context = System.Web.HttpContext.Current;
			UrlBuilder urlBuilder = new UrlBuilder(context.Request.RawUrl);
			urlBuilder.ServerUrl = new UrlBuilder(context.Request.Url.ToString()).ServerUrl;

			return urlBuilder.ToString();
		}

		// url that was used to access the page
		// internal url, that is a result of url-rewriting, something like /Renderers/Page.aspx?id={pageId}
		public string PageRequestAccessUrl()
		{
			return System.Web.HttpContext.Current.Request.Url.ToString();
		}

		// Composite's url to the page being rendered 
		// page url, but without query string and PathInfo, this could work, but if there's some kind of 
		// url routing, it's not a fact that it will work.
		public string CompositeRenderedUrl()
		{
			string retval = string.Empty;

			using (DataConnection dc = new DataConnection())
			{
				Composite.Data.SitemapNavigator smn = new Composite.Data.SitemapNavigator(dc);
				retval = smn.CurrentPageNode.Url;
			}

			return retval;
		}
	
		public int DistributedNavigationRootDepth()
		{
			int retval = -1;

			string path = CompositeRenderedUrl();
			string[] parts = path.Split(new string[] {"/"},	StringSplitOptions.None);
			retval = parts.Length;

			return (retval - 1);
		}

]]>
  </msxsl:script>

  <xsl:param name="Depth" select="user:DistributedNavigationRootDepth()" />
 
  <xsl:template match="/">
	<html>
	  <head>
		<!-- markup placed here will be shown in the head section of the rendered page -->
	  </head>
	  <body>
		<!--
		  Debugging output:
		<div>
		  CompositeUrlBuilder = <xsl:value-of select="user:CompositeUrlBuilder()" />
		  <br/>
		  PageRequestAccessUrl = <xsl:value-of select="user:PageRequestAccessUrl()" />
		  <br/>
		  CompositeRenderedUrl = <xsl:value-of select="user:CompositeRenderedUrl()" />
		  <br/>
		  DistributedNavigationRootDepth = <xsl:value-of select="$Depth" />
		</div>
		-->
		<!-- ================================================================== -->
		<h2>
		  <a id="unique_in_this_document">Further reading</a>
		</h2>	
		<f:function 
			name="Composite.Navigation.Distributed" 
			xmlns:f="http://www.composite.net/ns/function/1.0"
			>
			<f:param name="Level" value="{$Depth}" />
			<f:param name="Childs" value="True" />
			<f:param name="Expand" value="True" />
			<f:param name="NavigationId" value="NavigationSideBar" />
		</f:function>
	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>

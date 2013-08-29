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
## Composite C1 Debug Mode Detection (for runtime [page] speed optimizations)
	
*	name:  
	HolisticWare.Optimizations.DebugModeDetection.xslt
*	namespace:  
	HolisticWare.Optimizations.DebugModeDetection
*	description:  
	Detection of the Debug mode, so no compressed css and js files are served (serving .max.js, .max.css).  
	In Release mode compressed/minified/minimized js and css files are served (.js, .css)
*	url refrences  
	sample:			[]()  
	documentation:	
	*	[http://docs.composite.net/ASP-NET/CSharpFunctions/Creating-External-C-Functions](http://docs.composite.net/ASP-NET/CSharpFunctions/Creating-External-C-Functions)  
	*	[http://docs.composite.net/ASP-NET/CSharpFunctions/Using-C-Functions](http://docs.composite.net/ASP-NET/CSharpFunctions/Using-C-Functions)
*	author:   		
	HolisticWare,   [http://holisticware.net](http://holisticware.net)
	Miljenko Cvjetko
*	licence:   
	MIT [http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT)
	
	
### html sample (starting point)

	
### Usage

Composite C1 - Function

	  <f:function 
			name="HolisticWare.Optimizations.DebugModeDetection" 
			xmlns:f="http://www.composite.net/ns/function/1.0"
			>
		</f:function>

Parameter description:

===============================================================================
Docummentation.MarkDown.End
-->
  <msxsl:script language="C#" implements-prefix="user">
	<msxsl:assembly name="System.Web" />
	<msxsl:assembly name="System.Configuration" />

	<msxsl:using namespace="System.Web" />
	<msxsl:using namespace="System.Reflection" />
	<msxsl:using namespace="System.Diagnostics" />
	<msxsl:using namespace="System.Configuration" />

	<![CDATA[
	public bool IsHttpContextDebuggingEnabled()
	{
		bool HttpContextDebuggingEnabled 
				= HttpContext.Current.IsDebuggingEnabled;
				
		return HttpContextDebuggingEnabled;
	}

	public bool IsAssemblyExecutingDebuggableAttributeApplied()
	{
	  bool AssemblyExecutingDebuggableAttributeApplied
			  = Assembly.GetExecutingAssembly().IsDefined(typeof(DebuggableAttribute), false);

	  return AssemblyExecutingDebuggableAttributeApplied;
	}

	public bool IsDebuggerAttached()
	{
	  bool DebuggerAttached
			  = Debugger.IsAttached;

	  return DebuggerAttached;
	}
	
	public bool IsDebugMacroDefined()
	{
	  bool DebugMacroDefined = false;
	  
	  #if DEBUG
	  DebugMacroDefined = true;
	  #endif
		
	  return DebugMacroDefined;
	}
	
  ]]>
  </msxsl:script>

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
		  HttpContextDebuggingEnabled = <xsl:value-of select="user:IsHttpContextDebuggingEnabled()" />
		  <br/>
		  AssemblyExecutingDebuggableAttributeApplied = <xsl:value-of select="user:IsAssemblyExecutingDebuggableAttributeApplied()" />
		  <br/>
		  DebuggerAttached = <xsl:value-of select="user:IsDebuggerAttached()" />
		  <br/>
		  DebugMacroDefined = <xsl:value-of select="user:IsDebugMacroDefined()" />
		</div>



		<!--
		  Optimization.Speed:
		  Javascript at the end before closing <body> tag in order to defer javascript loading
		  and executing (non html generating javascript).
		-->

	  </body>
	</html>
  </xsl:template>
</xsl:stylesheet>

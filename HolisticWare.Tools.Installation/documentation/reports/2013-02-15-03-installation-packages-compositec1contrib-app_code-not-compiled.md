4.	Namespace CompositeC1Contrib.FunctionProvider not found
	App_Code not added in project (not precompiled for WebSite)
	
	1.	Problem  
	
	Server Error in '/' Application.

	Compilation Error

	Description: An error occurred during the compilation of a resource required to 
	service this request. Please review the following specific error details and 
	modify your source code appropriately. 

	Compiler Error Message: CS0234: The type or namespace name 'FunctionProvider' 
	does not exist in the namespace 'CompositeC1Contrib' (are you missing an assembly 
	reference?)

	Source Error:


	Line 44: 		<add namespace="System.Web.Routing" />
	Line 45: 		<add namespace="System.Web.WebPages" />
	Line 46: 		<add namespace="CompositeC1Contrib.FunctionProvider" />
	Line 47: 	  </namespaces>
	Line 48: 	</pages>

	Source File: \Website\Web.config    Line: 46 


	Show Detailed Compiler Output:


	C:\Program Files\Common Files\Microsoft Shared\DevServer\10.0> 
	"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe" /t:library /utf8output 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\426764a4\003024a3_30eacd01\TidyNet.DLL" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_32\System.Data\v4.0_4.0.0.0__b77a5c561934e089\System.Data.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Activities\v4.0_4.0.0.0__31bf3856ad364e35\System.Activities.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\3da51e00\003024a3_30eacd01\ICSharpCode.SharpZipLib.DLL" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System\v4.0_4.0.0.0__b77a5c561934e089\System.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\8f6b81e4\8b568622_5e0bce01\CompositeC1Contrib.RazorFunctions.DLL" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Core\v4.0_4.0.0.0__b77a5c561934e089\System.Core.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.Routing\v4.0_4.0.0.0__31bf3856ad364e35\System.Web.Routing.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\44984f86\003024a3_30eacd01\Microsoft.Practices.EnterpriseLibrary.Validation.DLL" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.Mvc\v4.0_3.0.0.0__31bf3856ad364e35\System.Web.Mvc.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.WebPages\v4.0_1.0.0.0__31bf3856ad364e35\System.Web.WebPages.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Workflow.Activities\v4.0_4.0.0.0__31bf3856ad364e35\System.Workflow.Activities.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Security\v4.0_4.0.0.0__b03f5f7f11d50a3a\System.Security.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Xml\v4.0_4.0.0.0__b77a5c561934e089\System.Xml.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\6c95e2a4\eb0dce22_5e0bce01\Microsoft.Web.Helpers.DLL" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\214c16c8\cbd48d22_570bce01\Composite.Workflows.DLL" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\Microsoft.CSharp\v4.0_4.0.0.0__b03f5f7f11d50a3a\Microsoft.CSharp.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.Extensions\v4.0_4.0.0.0__31bf3856ad364e35\System.Web.Extensions.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\0c528078\003024a3_30eacd01\Composite.XmlSerializers.DLL" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.Services\v4.0_4.0.0.0__b03f5f7f11d50a3a\System.Web.Services.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.WebPages.Razor\v4.0_1.0.0.0__31bf3856ad364e35\System.Web.WebPages.Razor.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Configuration\v4.0_4.0.0.0__b03f5f7f11d50a3a\System.Configuration.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.Abstractions\v4.0_4.0.0.0__31bf3856ad364e35\System.Web.Abstractions.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_32\System.Web\v4.0_4.0.0.0__b03f5f7f11d50a3a\System.Web.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Workflow.ComponentModel\v4.0_4.0.0.0__31bf3856ad364e35\System.Workflow.ComponentModel.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Data.DataSetExtensions\v4.0_4.0.0.0__b77a5c561934e089\System.Data.DataSetExtensions.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\8920fd7e\4bb95f17_5e0bce01\Composite.Generated.DLL" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.ApplicationServices\v4.0_4.0.0.0__31bf3856ad364e35\System.Web.ApplicationServices.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.WebPages.Deployment\v4.0_1.0.0.0__31bf3856ad364e35\System.Web.WebPages.Deployment.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Xml.Linq\v4.0_4.0.0.0__b77a5c561934e089\System.Xml.Linq.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.ComponentModel.DataAnnotations\v4.0_4.0.0.0__31bf3856ad364e35\System.ComponentModel.DataAnnotations.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.ServiceModel\v4.0_4.0.0.0__b77a5c561934e089\System.ServiceModel.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\Microsoft.Web.Infrastructure\v4.0_1.0.0.0__31bf3856ad364e35\Microsoft.Web.Infrastructure.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.Helpers\v4.0_1.0.0.0__31bf3856ad364e35\System.Web.Helpers.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_32\System.EnterpriseServices\v4.0_4.0.0.0__b03f5f7f11d50a3a\System.EnterpriseServices.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.WebPages.Deployment\v4.0_2.0.0.0__31bf3856ad364e35\System.Web.WebPages.Deployment.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\656f739e\4be6e51f_570bce01\Composite.DLL" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.IdentityModel\v4.0_4.0.0.0__b77a5c561934e089\System.IdentityModel.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.DynamicData\v4.0_4.0.0.0__31bf3856ad364e35\System.Web.DynamicData.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\a3096574\003024a3_30eacd01\Microsoft.Practices.EnterpriseLibrary.Logging.DLL" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\App_Code.oijm2ir7.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.ServiceModel.Activities\v4.0_4.0.0.0__31bf3856ad364e35\System.ServiceModel.Activities.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.ServiceModel.Activation\v4.0_4.0.0.0__31bf3856ad364e35\System.ServiceModel.Activation.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Web.Razor\v4.0_1.0.0.0__31bf3856ad364e35\System.Web.Razor.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.ServiceModel.Web\v4.0_4.0.0.0__31bf3856ad364e35\System.ServiceModel.Web.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Drawing\v4.0_4.0.0.0__b03f5f7f11d50a3a\System.Drawing.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.Runtime.Serialization\v4.0_4.0.0.0__b77a5c561934e089\System.Runtime.Serialization.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\dafeb5e4\003024a3_30eacd01\Microsoft.Practices.ObjectBuilder.DLL" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\b7be9cd2\3b3e9214_5a0bce01\CompositeC1Contrib.DLL" 
	/R:"C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.dll" /R:"C:\Windows\Microsoft.Net\assembly\GAC_MSIL\System.WorkflowServices\v4.0_4.0.0.0__31bf3856ad364e35\System.WorkflowServices.dll" 
	/R:"C:\Windows\Microsoft.Net\assembly\GAC_32\System.Transactions\v4.0_4.0.0.0__b77a5c561934e089\System.Transactions.dll" 
	/R:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\assembly\dl3\0af99f3a\003024a3_30eacd01\Microsoft.Practices.EnterpriseLibrary.Common.DLL" 
	/out:"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\App_global.asax.fxu9qwmp.dll" 
	/D:DEBUG /debug+ /optimize- /w:4 /nowarn:1659;1699;1701 /warnaserror-  
	"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\App_global.asax.fxu9qwmp.0.cs" 
	"\AppData\Local\Temp\Temporary ASP.NET Files\root\4b671ab1\4c998343\App_global.asax.fxu9qwmp.1.cs"


	Microsoft (R) Visual C# 2010 Compiler version 4.0.30319.517
	Copyright (C) Microsoft Corporation. All rights reserved.

	\Website\Web.config(46,30): error CS0234: The type or namespace name 'FunctionProvider' 
	does not exist in the namespace 'CompositeC1Contrib' (are you missing an assembly reference?)

	Show Complete Compilation Source:


	Line 1:    <?xml version="1.0" encoding="utf-8"?>
	Line 2:    <configuration>
	Line 3:      <!-- Hey Dev! Changing or removing existing elements in this file may cause functionality in Composite C1 to break -->
	Line 4:      <system.web>
	Line 5:    	<trust level="Full" />
	Line 6:    	<globalization requestEncoding="utf-8" responseEncoding="utf-8" />
	Line 7:    	<customErrors mode="Off">
	Line 8:    	  <error statusCode="404" redirect="Renderers/FileNotFoundHandler.ashx" />
	Line 9:    	</customErrors>
	Line 10:   	<compilation debug="true" targetFramework="4.0" optimizeCompilations="false">
	Line 11:   	  <assemblies>
	Line 12:   		<add assembly="System.Security, Version=4.0.0.0, Culture=neutral, PublicKeyToken=B03F5F7F11D50A3A" />
	Line 13:   		<add assembly="System.Workflow.ComponentModel, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31BF3856AD364E35" />
	Line 14:   		<add assembly="System.Workflow.Activities, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" />
	Line 15:   		<add assembly="System.Transactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" />
	Line 16:   		<add assembly="System.Web.Abstractions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31BF3856AD364E35" />
	Line 17:   		<add assembly="System.Web.Helpers, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31BF3856AD364E35" />
	Line 18:   		<add assembly="System.Web.Routing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31BF3856AD364E35" />
	Line 19:   		<add assembly="System.Web.Mvc, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31BF3856AD364E35" />
	Line 20:   		<add assembly="System.Web.WebPages, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31BF3856AD364E35" />
	Line 21:   	  </assemblies>
	Line 22:   	  <buildProviders>
	Line 23:   		<!--
	Line 24:   		<add extension=".cshtml" type="System.Web.WebPages.Razor.RazorBuildProvider, System.Web.WebPages.Razor" />
	Line 25:   		-->
	Line 26:   		<add extension=".cshtml" type="CompositeC1Contrib.RazorFunctions.CompositeC1RazorBuildProvider, CompositeC1Contrib.RazorFunctions" />
	Line 27:   	  </buildProviders>
	Line 28:   	</compilation>
	Line 29:   	<httpRuntime maxRequestLength="20480" relaxedUrlToFileSystemMapping="true" requestPathInvalidCharacters="&lt;,&gt;,*,%,&amp;,\,?" />
	Line 30:   	<!-- colon removed from @requestPathInvalidCharacters -->
	Line 31:   	<xhtmlConformance mode="Strict" />
	Line 32:   	<trace enabled="false" traceMode="SortByTime" requestLimit="100" writeToDiagnosticsTrace="false" pageOutput="true" />
	Line 33:   	<pages controlRenderingCompatibilityVersion="3.5" clientIDMode="AutoID">
	Line 34:   	  <controls>
	Line 35:   		<add tagPrefix="f" namespace="Composite.Plugins.PageTemplates.MasterPages.Controls.Functions" assembly="Composite" />
	Line 36:   		<add tagPrefix="c1" namespace="Composite.Plugins.PageTemplates.MasterPages.Controls.Rendering" assembly="Composite" />
	Line 37:   		<add tagPrefix="rendering" namespace="CompositeC1Contrib.Web.UI.Rendering" assembly="CompositeC1Contrib" />
	Line 38:   	  </controls>
	Line 39:   	  <namespaces>
	Line 40:   		<add namespace="System.Web.Helpers" />
	Line 41:   		<add namespace="System.Web.Mvc" />
	Line 42:   		<add namespace="System.Web.Mvc.Ajax" />
	Line 43:   		<add namespace="System.Web.Mvc.Html" />
	Line 44:   		<add namespace="System.Web.Routing" />
	Line 45:   		<add namespace="System.Web.WebPages" />
	Line 46:   		<add namespace="CompositeC1Contrib.FunctionProvider" />
	Line 47:   	  </namespaces>
	Line 48:   	</pages>
	Line 49:   	<!--  IIS6 & IIS7 Clasic mode -->
	Line 50:   	<httpModules>
	Line 51:   	  <add name="LoggerHostnameHandler" type="Composite.Core.WebClient.Logging.WCF.LoggerHostnameHandler, Composite" />
	Line 52:   	  <add name="ApplicationOfflineCheck" type="Composite.Core.Application.ApplicationOfflineCheckHttpModule, Composite" />
	Line 53:   	  <add name="AjaxResponseHandler" type="Composite.Core.WebClient.Ajax.AjaxResponseHttpModule, Composite" />
	Line 54:   	  <add name="CompositeAdministrativeResponseFilter" type="Composite.Core.WebClient.HttpModules.AdministrativeResponseFilterHttpModule, Composite" />
	Line 55:   	  <add name="CompositeAdministrativeAuthorization" type="Composite.Core.WebClient.HttpModules.AdministrativeAuthorizationHttpModule, Composite" />
	Line 56:   	  <add name="CompositeRequestInterceptor" type="Composite.Core.WebClient.Renderings.RequestInterceptorHttpModule, Composite" />
	Line 57:   	  <add name="CompositeAdministrativeDataScopeSetter" type="Composite.Core.WebClient.HttpModules.AdministrativeDataScopeSetterHttpModule, Composite" />
	Line 58:   	  <add name="CompositeAdministrativeCultureSetter" type="Composite.Core.WebClient.HttpModules.AdministrativeCultureSetterHttpModule, Composite" />
	Line 59:   	</httpModules>
	Line 60:   	<caching>
	Line 61:   	  <outputCacheSettings>
	Line 62:   		<outputCacheProfiles>
	Line 63:   		  <add name="C1Page" duration="0" varyByCustom="C1Page" varyByParam="*" />
	Line 64:   		</outputCacheProfiles>
	Line 65:   	  </outputCacheSettings>
	Line 66:   	</caching>
	Line 67:   	<httpHandlers>
	Line 68:   	  <add verb="GET" path="sitemap.xml" type="Composite.AspNet.SiteMapHandler, Composite" />
	Line 69:   	  <add verb="*" path="Renderers/Page.aspx" type="CompositeC1Contrib.Web.UI.CompositeC1Page, CompositeC1Contrib" />
	Line 70:   	</httpHandlers>
	Line 71:   	<siteMap defaultProvider="CompositeC1">
	Line 72:   	  <providers>
	Line 73:   		<add name="CompositeC1" type="Composite.AspNet.CompositeC1SiteMapProvider, Composite" />
	Line 74:   	  </providers>
	Line 75:   	</siteMap>
	Line 76:     </system.web>
	Line 77:     <system.codedom>
	Line 78:   	<compilers>
	Line 79:   	  <compiler language="c#;cs;csharp" extension=".cs" compilerOptions="/warnaserror-" warningLevel="4" type="Microsoft.CSharp.CSharpCodeProvider, System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089">
	Line 80:   		<providerOption name="CompilerVersion" value="v4.0" />
	Line 81:   	  </compiler>
	Line 82:   	  <compiler language="vb;vbs;visualbasic;vbscript" extension=".vb" compilerOptions="/optioninfer+" type="Microsoft.VisualBasic.VBCodeProvider, System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089">
	Line 83:   		<providerOption name="CompilerVersion" value="v4.0" />
	Line 84:   	  </compiler>
	Line 85:   	</compilers>
	Line 86:     </system.codedom>
	Line 87:     <!-- IIS7 Intergrated mode configuration -->
	Line 88:     <system.webServer>
	Line 89:   	<validation validateIntegratedModeConfiguration="false" />
	Line 90:   	<modules runAllManagedModulesForAllRequests="true">
	Line 91:   	  <remove name="UrlRoutingModule" />
	Line 92:   	  <add name="LoggerHostnameHandler" type="Composite.Core.WebClient.Logging.WCF.LoggerHostnameHandler, Composite" />
	Line 93:   	  <add name="ApplicationOfflineCheck" type="Composite.Core.Application.ApplicationOfflineCheckHttpModule, Composite" />
	Line 94:   	  <add name="AjaxResponseHandler" type="Composite.Core.WebClient.Ajax.AjaxResponseHttpModule, Composite" />
	Line 95:   	  <add name="CompositeAdministrativeResponseFilter" type="Composite.Core.WebClient.HttpModules.AdministrativeResponseFilterHttpModule, Composite" />
	Line 96:   	  <add name="CompositeAdministrativeAuthorization" type="Composite.Core.WebClient.HttpModules.AdministrativeAuthorizationHttpModule, Composite" />
	Line 97:   	  <add name="CompositeRequestInterceptor" type="Composite.Core.WebClient.Renderings.RequestInterceptorHttpModule, Composite" />
	Line 98:   	  <add name="CompositeAdministrativeDataScopeSetter" type="Composite.Core.WebClient.HttpModules.AdministrativeDataScopeSetterHttpModule, Composite" />
	Line 99:   	  <add name="CompositeAdministrativeCultureSetter" type="Composite.Core.WebClient.HttpModules.AdministrativeCultureSetterHttpModule, Composite" />
	Line 100:  	  <add name="UrlRoutingModule" type="System.Web.Routing.UrlRoutingModule, System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" />
	Line 101:  	</modules>
	Line 102:  	<handlers>
	Line 103:  	  <add name="SiteMap" verb="GET" path="sitemap.xml" type="Composite.AspNet.SiteMapHandler, Composite" />
	Line 104:  	  <add name="Wildcard ASP.NET mapping" preCondition="classicMode,runtimeVersionv4.0,bitness32" path="*" verb="*" modules="IsapiModule" scriptProcessor="%windir%\Microsoft.NET\Framework\v4.0.30319\aspnet_isapi.dll" resourceType="Unspecified" requireAccess="None" />
	Line 105:  	  <add name="Wildcard ASP.NET mapping (x64)" preCondition="classicMode,runtimeVersionv4.0,bitness64" path="*" verb="*" modules="IsapiModule" scriptProcessor="%windir%\Microsoft.NET\Framework64\v4.0.30319\aspnet_isapi.dll" resourceType="Unspecified" requireAccess="None" />
	Line 106:  	  <add name="UrlRoutingHandler" preCondition="integratedMode" verb="*" path="UrlRouting.axd" type="System.Web.HttpForbiddenHandler, System.Web, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" />
	Line 107:  	  <add name="CompositePage" verb="*" path="Renderers/Page.aspx" type="CompositeC1Contrib.Web.UI.CompositeC1Page, CompositeC1Contrib" />
	Line 108:  	</handlers>
	Line 109:    </system.webServer>
	Line 110:  </configuration>


	Version Information: Microsoft .NET Framework Version:4.0.30319; ASP.NET Version:4.0.30319.547		

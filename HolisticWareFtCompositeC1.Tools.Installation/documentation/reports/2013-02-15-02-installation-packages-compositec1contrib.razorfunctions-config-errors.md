## Config errors after adding CompositeC1Contrib.RazorFunctions  ##

1.	Problem  	
	web.config  
	.cshtml  		
	
	Server Error in '/' Application.
	Configuration Error	
	Description: 	An error occurred during the processing of a configuration file required 
					to service this request. Please review the specific error details below 
					and modify your configuration file appropriately. 
	
	Parser Error Message: The entry '.cshtml' has already been added.
	
	Source Error: 
	
	Line 22:       <buildProviders>
	Line 23:         <add extension=".cshtml" type="System.Web.WebPages.Razor.RazorBuildProvider, System.Web.WebPages.Razor" />
	Line 24:         <add extension=".cshtml" type="CompositeC1Contrib.RazorFunctions.CompositeC1RazorBuildProvider, CompositeC1Contrib.RazorFunctions" />
	Line 25:       </buildProviders>
	Line 26:     </compilation>
	
	Source File: \Website\web.config    Line: 24 		
	
2.	Solution   
	Comment out handling cshtml files by System.Web.WebPages.Razor.RazorBuildProvider
		
  <buildProviders>
	<!--
	<add extension=".cshtml" type="System.Web.WebPages.Razor.RazorBuildProvider, System.Web.WebPages.Razor" />
	-->
	<add extension=".cshtml" type="CompositeC1Contrib.RazorFunctions.CompositeC1RazorBuildProvider, CompositeC1Contrib.RazorFunctions" />
  </buildProviders>

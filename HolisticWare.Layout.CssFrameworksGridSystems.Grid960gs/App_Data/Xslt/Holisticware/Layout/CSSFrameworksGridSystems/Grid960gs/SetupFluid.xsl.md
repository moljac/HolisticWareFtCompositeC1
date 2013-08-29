# Grid System 960gs - fixed #

* 	url:		
	[https://github.com/bauhouse/fluid960gs/tree/](https://github.com/bauhouse/fluid960gs/tree/)  
	[http://www.designinfluences.com](http://www.designinfluences.com)   
* 	author: 	
	Nathan Smith	
*	Name:		  
	SetupGrid960gsFluid
* 	Namespace:	  
	HolisticWare.Layout.CSSFrameworksGridSystems.Grid960gs
*	Description:  
	960gs fixed layout 12, 16 columns by Stephen Bau

## Prerequisites ##

Composite C1 packages:

1.

Fluid / Resizable objects (handy for fluid grids) - based on Resizable images

1.	[http://unstoppablerobotninja.com/entry/fluid-images/](http://unstoppablerobotninja.com/entry/fluid-images/)


## Installation ##

Deployment type

1. xcopy  
	1. 	copy folders into Website or WebApplication root   
		1.	required
			js/fluid/   
			css/fluid/  
		2.	optional  
			content-c1-x-html  - content files for Content perspective in Composite C1
		
2.  Packages Composite C1
	1. 
	

## Usage ##

Composite C1 XSLT function - Parameterized function to setup grid system:

	<f:function 
		name="HolisticWare.Layout.CSSFrameworksGridSystems.Grid960gs.SetupGrid960gsFixed" 
		xmlns:f="http://www.composite.net/ns/function/1.0"
		>
		<f:param name="NumberOfColumns" value="16" />
		<f:param name="JavaScriptLibrary" value="MooTools" />
		<f:param name="PageSpeedOptimized" value="True" />
	</f:function>

Parameter description

*	NumberOfColumns<Int32>=12|16
	Default value = 16  
	No 24 columns grid
*	ResizableObjects<bool>=true|false   
*	JavaScriptLibrary<String>=MooTools|jQuery|None
* 	PageSpeedOptimized<Boolean>=true|false  
	Default value = true  
	Optimization for PageSpeed turned on


\

## Orignal html ##

CSS

	<link rel="stylesheet" type="text/css" href="../css/reset.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="../css/text.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="../css/grid.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="../css/layout.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="../css/nav.css" media="screen" />
	<!--[if IE 6]><link rel="stylesheet" type="text/css" href="../css/ie6.css" media="screen" /><![endif]-->
	<!--[if IE 7]><link rel="stylesheet" type="text/css" href="../css/ie.css" media="screen" /><![endif]-->


Optimization steps:
	1.	merge into one core file  
		1.	reset.css  
		2.	text.css   
		3.	grid.css   
	2.	merge theme into other
		1.	layout.css   
		2.	nav.css  

960.css		- px
grid.css	- %



Javascript

MooTools:

	<script type="text/javascript" src="js/mootools-1.2.1-core.js"></script>
	<script type="text/javascript" src="js/mootools-1.2-more.js"></script>
	<script type="text/javascript" src="js/mootools-fluid16-autoselect.js"></script>

jQuery:

	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	<script type="text/javascript" src="js/jquery-fluid16.js"></script>


non-optimized versions -> extension change from .js to .max.js

Optimization steps:

	1.	merge all files in single
	2.	minification/obfuscation
		1.	mootools.js
		2.	jquery.js


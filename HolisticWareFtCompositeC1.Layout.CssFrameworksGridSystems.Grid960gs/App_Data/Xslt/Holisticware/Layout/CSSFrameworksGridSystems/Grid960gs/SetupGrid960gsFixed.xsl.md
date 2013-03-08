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
		1.	required
			js/   
			css/  
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

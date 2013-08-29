echo off

echo ==========================================================================
echo Payload reduction:
echo 	- minification (whitespace removal)
echo 	- obfuscation
echo 
echo Tools
echo 	- Yahoo			yuicompress
			https://github.com/yui/yuicompressor/blob/master/doc/README#L6
echo 	- Microsoft:	ajax minifier!??
echo 
echo echo cmd.exe > Run as administrator!!
echo ==========================================================================

set YUICOMPRESSOR=.\yuicompressor-2.4.2.jar
set NOTEPAD=notepad.exe

echo ==========================================================================
echo Determine which js files are needed based on packages used!
echo	in PRE load stage only js that renders html (usually not needed)
set JS_PRE=^


for %%f in (%JS_PRE%) DO (

java -jar %YUICOMPRESSOR% ^
		-v --charset utf-8 ^
		-o %%f.yc.js ^
		%%f
echo ----------------------------------------------
)
echo ==========================================================================
echo Determine which js files are needed based on packages used!
set JS_POST=^
	..\holisticware_post_960gsfluid_jquery.js ^
	..\holisticware_post_960gsfluid_image_resizing.js ^
	..\holisticware_post_syntaxhighlighter.js ^
	..\holisticware_post_syntaxhighlighter_jquery_beautyofcode.js

for %%f in (%JS_POST%) DO (


java -jar %YUICOMPRESSOR% ^
		-v --charset utf-8 ^
		-o %%f.yc.js ^
		%%f

echo ----------------------------------------------
)
echo ==========================================================================
set CSS=^
	..\holisticware_960gs_fixed.css 			  ^
	..\holisticware_960gs_fluid.css 			  ^
	..\holisticware_960gs_ie.css				  ^
	..\holisticware_960gs_ie6.css				  ^
	..\holisticware_C1_1140grid.css				  ^
	..\holisticware_C1_1140grid_ie.css			  ^
	..\holisticware_C1_1140grid_mobile.css		  ^
	..\holisticware_C1_1140grid_screen_small.css  ^
	..\holisticware_syntaxhighlighter.css


for %%f in (%CSS%) DO (
		
java -jar %YUICOMPRESSOR% ^
		-v --charset utf-8 ^
		-o %%f.yc.css ^
		%%f

echo ----------------------------------------------

)
echo ==========================================================================

pause


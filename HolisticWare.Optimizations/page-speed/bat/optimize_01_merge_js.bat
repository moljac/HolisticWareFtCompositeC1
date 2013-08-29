echo off

echo For Composite C1 js and css in 2 folders will be merged:
echo 	- Frontend (not Composite this is up to Composite guys!)
echo 	- proprietary (in this case HolisticWare stuff that we have added)
echo 
echo Only those necessary stuff will be merged into 3 files at minimum:
echo 	- js preloaded (loaded in head tag, used for html generation)
echo 	- js postladed 
echo 	- css
echo			if there are css separated by media we should have one css file
echo			pro media. 
echo			See Composite C1 layout templates for that!
echo 
echo 
echo 
echo To see all available files use dir /b /s <Folder>/*.js
echo  
echo >dir /b /s Frontend\*.js
echo 
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shAutoloader.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushAppleScript.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushAS3.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushBash.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushColdFusion.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushCpp.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushCSharp.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushCss.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushDelphi.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushDiff.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushErlang.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushGroovy.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushJava.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushJavaFX.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushJScript.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushPerl.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushPhp.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushPlain.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushPowerShell.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushPython.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushRuby.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushSass.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushScala.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushSql.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushVb.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shBrushXml.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shCore.js
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\scripts\shLegacy.js
echo 
echo
echo >dir /b /s HolisticWare\*.js
echo \HolisticWare\960gs\js\jquery-1.3.2.min.js
echo \HolisticWare\960gs\js\jquery-1.6.4.min.js
echo \HolisticWare\960gs\js\jquery-fluid16.js
echo \HolisticWare\960gs\js\jquery-ui.js
echo \HolisticWare\960gs\js\mootools-1.2-more.js
echo \HolisticWare\960gs\js\mootools-1.2.1-core.js
echo \HolisticWare\960gs\js\mootools-core-1.4.0-full-compat-yc.js
echo \HolisticWare\960gs\js\mootools-core-1.4.0-full-compat.js
echo \HolisticWare\960gs\js\mootools-core-1.4.0-full-nocompat-yc.js
echo \HolisticWare\960gs\js\mootools-core-1.4.0-full-nocompat.js
echo \HolisticWare\960gs\js\mootools-fluid16-autoselect.js
echo \HolisticWare\960gs\js\mootools-fluid16.js
echo \HolisticWare\jquery\jquery-1.6.4.js
echo \HolisticWare\jquery\jquery-1.6.4.min.js
echo \HolisticWare\Media\img-resizer.js
echo \HolisticWare\SyntaxHighlighter\shBrushXml.js
echo \HolisticWare\SyntaxHighlighter\shCore.js
echo \HolisticWare\SyntaxHighlighter\jQuery.beautyOfCode-0.2\jquery.beautyOfCode-min.js
echo \HolisticWare\SyntaxHighlighter\jQuery.beautyOfCode-0.2\jquery.beautyOfCode.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shAutoloader.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushAppleScript.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushAS3.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushBash.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushColdFusion.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushCpp.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushCSharp.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushCss.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushDelphi.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushDiff.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushErlang.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushGroovy.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushJava.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushJavaFX.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushJScript.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushPerl.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushPhp.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushPlain.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushPowerShell.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushPython.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushRuby.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushSass.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushScala.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushSql.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushVb.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushXml.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shCore.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shLegacy.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\src\shAutoloader.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\src\shCore.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\src\shLegacy.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\tests\commonjs_tests.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\tests\js\jquery-1.4.2.js
echo \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\tests\js\qunit.js
echo 
echo


echo ====================================================================================
echo js for jquery
echo 
set JS_POST=^
	\HolisticWare\jquery\jquery-1.6.4.js

set JS_POST_OUTPUT=..\holisticware_post_jquery.js
del /f /q  %JS_POST_OUTPUT%

for %%f in (%JS_POST%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %JS_POST_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo js for mootols
echo 
set JS_POST=^
	\HolisticWare\960gs\js\mootools-core-1.4.0-full-compat.js


::	\HolisticWare\960gs\js\mootools-core-1.4.0-full-nocompat.js

set JS_POST_OUTPUT=..\holisticware_post_mootols.js
del /f /q  %JS_POST_OUTPUT%

for %%f in (%JS_POST%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %JS_POST_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo js for 960gs fluid jquery
echo 
set JS_POST=^
	\HolisticWare\jquery\jquery-1.6.4.js ^
	\HolisticWare\960gs\js\jquery-fluid16.js ^
	\HolisticWare\960gs\js\jquery-ui.js 

set JS_POST_OUTPUT=..\holisticware_post_960gsfluid_jquery.js
del /f /q  %JS_POST_OUTPUT%

for %%f in (%JS_POST%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %JS_POST_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo js for 960gs mootols
echo 
set JS_POST=^
	\HolisticWare\960gs\js\mootools-core-1.4.0-full-compat.js ^
	\HolisticWare\960gs\js\mootools-fluid16-autoselect.js  ^
	\HolisticWare\960gs\js\mootools-fluid16.js

set JS_POST_OUTPUT=..\holisticware_post_960gsfluid_mootols.js
del /f /q  %JS_POST_OUTPUT%

for %%f in (%JS_POST%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %JS_POST_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo js for 960gs fluid image resizing
echo 
set JS_POST=^
	\HolisticWare\Media\img-resizer.js

set JS_POST_OUTPUT=..\holisticware_post_960gsfluid_image_resizing.js
del /f /q  %JS_POST_OUTPUT%

for %%f in (%JS_POST%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %JS_POST_OUTPUT%
echo --------------------------
)

echo ====================================================================================
echo js for SyntaxHighlighter
echo 
set JS_POST= ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\src\shAutoloader.js		  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\src\shCore.js				  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\src\shLegacy.js			  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shCore.js			  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shLegacy.js		  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shAutoloader.js	  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushBash.js		  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushCpp.js		  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushCSharp.js	  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushJava.js		  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushJavaFX.js	  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushJScript.js	  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushPerl.js		  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushPhp.js		  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushPlain.js	  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushPowerShell.js ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushSql.js        ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushVb.js		  ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\scripts\shBrushXml.js

set JS_POST_OUTPUT=..\holisticware_post_syntaxhighlighter.js
del /f /q  %JS_POST_OUTPUT%

for %%f in (%JS_POST%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %JS_POST_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo js for SyntaxHighlighter BeautyOfCode jquery
echo 
set JS_POST= ^
	\HolisticWare\SyntaxHighlighter\jQuery.beautyOfCode-0.2\jquery.beautyOfCode.js

set JS_POST_OUTPUT=..\holisticware_post_syntaxhighlighter_jquery_beautyofcode.js
del /f /q  %JS_POST_OUTPUT%

for %%f in (%JS_POST%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %JS_POST_OUTPUT%
echo --------------------------
)
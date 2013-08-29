echo off

echo For Composite C1 js and css in 2 folders will be merged:
echo 	- Frontend (not Composite this is up to Composite guys!)
echo 	- proprietary (in this case HolisticWare stuff that we have added)
echo 
echo Only those necessary stuff will be merged into 3 files at minimum:
echo 	- js preloaded (loaded in head tag, used for html generation)
echo 	- js postladed 
echo 	- css
echo 
echo Note: css that cannot be merged:
echo 		- css with media selectors (screen, print, mobile)
echo 		- css for browser fixes (in conditional comments)
echo 
echo 
echo 
echo To see all available files use dir /b /s <Folder>/*.js
echo  

echo >dir /b /s Frontend\*.css
echo \Frontend\Composite\Navigation\Distributed\Styles.css
echo \Frontend\Composite\Navigation\LanguageSwitcher\Images.css
echo \Frontend\Composite\Navigation\LanguageSwitcher\Styles.css
echo \Frontend\Composite\Navigation\LevelSitemap\Styles.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shCore.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shCoreDefault.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shCoreDjango.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shCoreEclipse.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shCoreEmacs.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shCoreFadeToGrey.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shCoreMDUltra.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shCoreMidnight.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shCoreRDark.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shThemeDefault.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shThemeDjango.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shThemeEclipse.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shThemeEmacs.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shThemeFadeToGrey.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shThemeMDUltra.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shThemeMidnight.css
echo \Frontend\Composite\Web\Html\SyntaxHighlighter\styles\shThemeRDark.css
echo \Frontend\Config\VisualEditor\Styles\core.css
echo \Frontend\Styles\1140.css
echo \Frontend\Styles\ie.css
echo \Frontend\Styles\layout.css
echo \Frontend\Styles\mobile.css
echo \Frontend\Styles\smallerscreen.css
echo \Frontend\Styles\typeimg.css
echo \Frontend\Styles\VisualEditor.common.css
echo 

echo ====================================================================================
echo ====================================================================================
echo ====================================================================================
echo ====================================================================================


echo ====================================================================================
echo css for Composite C1 1140 grid
echo 
set CSS= ^
	\Frontend\Styles\1140.css ^
	\Frontend\Styles\VisualEditor.common.css ^
	\Frontend\Styles\typeimg.css ^
	\Frontend\Styles\layout.css 
	
set CSS_OUTPUT=..\holisticware_C1_1140grid.css
del /f /q  %CSS_OUTPUT%

for %%f in (%CSS%) DO (
	type ..\..\..\%%f >> %CSS_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo css for Composite C1 1140 grid mobile
echo 
set CSS= ^
	\Frontend\Styles\mobile.css
	
set CSS_OUTPUT=..\holisticware_C1_1140grid_mobile.css
del /f /q  %CSS_OUTPUT%

for %%f in (%CSS%) DO (
	type ..\..\..\%%f >> %CSS_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo css for Composite C1 1140 grid screen small
echo 
set CSS= ^
	\Frontend\Styles\smallerscreen.css
	
set CSS_OUTPUT=..\holisticware_C1_1140grid_screen_small.css
del /f /q  %CSS_OUTPUT%

for %%f in (%CSS%) DO (
	type ..\..\..\%%f >> %CSS_OUTPUT%
echo --------------------------
)

echo ====================================================================================
echo css for Composite C1 1140 grid ie fix
echo 
set CSS= ^
	\Frontend\Styles\ie.css
		
set CSS_OUTPUT=..\holisticware_C1_1140grid_ie.css
del /f /q  %CSS_OUTPUT%

for %%f in (%CSS%) DO (
	type ..\..\..\%%f >> %CSS_OUTPUT%
echo --------------------------
)


echo ====================================================================================
echo css for 960gs fluid
echo 
set CSS= ^
	\HolisticWare\960gs\css\reset.css   ^
	\HolisticWare\960gs\css\text.css	^
	\HolisticWare\960gs\css\960_fluid.css	^
	\HolisticWare\960gs\css\layout.css 	^
	\HolisticWare\960gs\css\nav.css		^
	\HolisticWare\holisticware.css		

set CSS_OUTPUT=..\holisticware_960gs_fluid.css
del /f /q  %CSS_OUTPUT%

for %%f in (%CSS%) DO (
	type ..\..\..\%%f >> %CSS_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo css for 960gs fixed
echo 
set CSS= ^
	\HolisticWare\960gs\css\reset.css   ^
	\HolisticWare\960gs\css\text.css	^
	\HolisticWare\960gs\css\960_fixed.css	^
	\HolisticWare\960gs\css\layout.css 	^
	\HolisticWare\960gs\css\nav.css		^
	\HolisticWare\holisticware.css		

set CSS_OUTPUT=..\holisticware_960gs_fixed.css
del /f /q  %CSS_OUTPUT%

for %%f in (%CSS%) DO (
	type ..\..\..\%%f >> %CSS_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo css for 960gs fluid ie 7+ fix
echo 
set CSS= ^
	\HolisticWare\960gs\css\ie.css

set CSS_OUTPUT=..\holisticware_960gs_ie.css
del /f /q  %CSS_OUTPUT%

for %%f in (%CSS%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %CSS_OUTPUT%
echo --------------------------
)
echo ====================================================================================
echo css for 960gs fluid ie 6 fix
echo 
set CSS= ^
	\HolisticWare\960gs\css\ie6.css

set CSS_OUTPUT=..\holisticware_960gs_ie6.css
del /f /q  %CSS_OUTPUT%

for %%f in (%CSS%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %CSS_OUTPUT%
echo --------------------------
)



echo ====================================================================================
echo css for syntaxhighlighter
echo 
set CSS= ^
	\HolisticWare\SyntaxHighlighter\shCoreDefault.css ^
	\HolisticWare\SyntaxHighlighter\shThemeDefault.css ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shCore.css ^
	\HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shCoreDefault.css 
	
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shCoreDjango.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shCoreEclipse.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shCoreEmacs.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shCoreFadeToGrey.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shCoreMDUltra.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shCoreMidnight.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shCoreRDark.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shThemeDefault.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shThemeDjango.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shThemeEclipse.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shThemeEmacs.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shThemeFadeToGrey.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shThemeMDUltra.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shThemeMidnight.css
:: \HolisticWare\SyntaxHighlighter\syntaxhighlighter_3.0.83\styles\shThemeRDark.css

set CSS_OUTPUT=..\holisticware_syntaxhighlighter.css
del /f /q  %CSS_OUTPUT%

for %%f in (%CSS%) DO (
:: f is readonly file from svn and notepad++ cannot open it!!!!
:: %NOTEPAD% %%f

	type ..\..\..\%%f >> %CSS_OUTPUT%
echo --------------------------
)


pause
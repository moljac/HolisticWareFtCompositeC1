echo off
echo This is explanation and implementation of rules and recommendations (R&Rs)for
echo Better website responsivness (Performance) which certainly influences overall
echo UX (user experience of Your web site).
echo Today (as speaking of 2011-09-22) there are 2 sets of R&Rs:
echo		- Google Page Speed
echo		  http://code.google.com/speed/page-speed/docs/rules_intro.html
echo		- Yahoo yslow
echo		  http://developer.yahoo.com/performance/rules.html
echo
echo This script[s] handle 2 cases:
echo		- minimizing payload through compressing/minifying css and js content
echo		- reducing number of HTTP request through merging of css and js.
echo ==============================================================================
echo
echo
echo According to Google's Page Speed rules
echo http://code.google.com/speed/page-speed/docs/rtt.html
echo
echo


echo ==============================================================================
echo HTTP request reduction and making js and css external
echo 
echo Making js and css external (in separate files) enables client and server to 
echo optimize calls by executing them in parallel/asynchronous way.
echo 
echo HTTP request reduction is made through merging of js and css files and loading:
echo 	- css at the beginning (css is needed, besides content (html) as soon as possible)
echo 	  put the link to merged css file just before closing </head> tag
echo 	- js at the end, because js loading can block	rendering of the content
echo 	  put link to merged js file just before closing </body> tag
echo 
echo Note: 
echo There is exception for js that generates content (html) this js should be loaded at 
echo the beginning like css
echo 	  put the link to merged js file just before closing </head> tag
echo 		for example js for email protection on the site, so the spam harvesters cannot
echo 		pickup mailto: tags easily!
echo ==============================================================================
echo call ./optimize_merge_js_css.bat

echo ==============================================================================


pause

echo ==============================================================================
echo Payload reduction 
echo			Google: Minimize payload size 
				http://code.google.com/speed/page-speed/docs/payload.html
				Yahoo: Minify JavaScript and CSS
				http://developer.yahoo.com/performance/rules.html 
echo
echo Also called compression or minifying consists of 2 major aspects:
echo 	- whitespace removal
echo 	- obfuscation (replacing meaningful variables and function names with shorter ones)
echo Payload reduction tools
echo 	js reduction:	Closure Compiler, JSMin or the YUI Compressor
echo 	css reduction:	 YUI Compressor and cssmin.js
echo 
echo Following script uses yuicompress http://developer.yahoo.com/yui/compressor/
echo ==============================================================================
call ./optimize_compress_js_css.bat



pause

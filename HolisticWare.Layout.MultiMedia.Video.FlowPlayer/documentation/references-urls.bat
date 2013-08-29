@echo off

set BROWSER="%USERPROFILE%\AppData\Local\Google\Chrome SxS\Application\chrome.exe"

%BROWSER% ^
	-new-window ^
	http://flowplayer.org/ ^
	http://flowplayer.org/demos/ ^
	http://flowplayer.org/docs/ ^
	http://www.henrikbrinch.dk/Blog/2012/02/16/Integrating-FlowPlayer-in-Composite-C1 ^
	http://holisticware.net/HolisticWare/Know-How/Sports/windsurfing.aspx ^
	https://github.com/flowplayer/flowplayer

	
@IF %ERRORLEVEL% NEQ 0 PAUSE	
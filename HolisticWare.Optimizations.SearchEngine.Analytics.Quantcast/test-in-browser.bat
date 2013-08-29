@echo off

set BROWSER=%USERPROFILE%\AppData\Local\Google\Chrome\Application\chrome.exe 

%BROWSER% ^
	-new-window ^
	http://localhost:2409/ ^
	http://localhost:2409/Composite/top.aspx ^



@IF %ERRORLEVEL% NEQ 0 PAUSE	

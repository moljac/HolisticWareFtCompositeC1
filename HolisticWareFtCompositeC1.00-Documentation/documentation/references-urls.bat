@echo off

set BROWSER="%USERPROFILE%\AppData\Local\Google\Chrome SxS\Application\chrome.exe"

%BROWSER% ^
	-new-window ^
	http://holisticware.net/ ^
	http://studio-sac.net ^
	http://studio-sac.com ^
	http://kreativni-kaos.holisticware.net/ ^
	http://destination4.me ^
	http://inkunabula.hr ^
	http://riz.biz ^
	http://bistrici.net ^
	http://alupvcsistemi.com ^



	
@IF %ERRORLEVEL% NEQ 0 PAUSE	
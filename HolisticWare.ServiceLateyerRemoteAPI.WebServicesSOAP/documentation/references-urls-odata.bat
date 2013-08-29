@echo off

set BROWSER="%USERPROFILE%\AppData\Local\Google\Chrome SxS\Application\chrome.exe"

%BROWSER% ^
	-new-window ^
	http://www.odata.org/
	http://www.codeproject.com/Articles/393623/OData-Services
	http://en.wikipedia.org/wiki/Open_Data_Protocol
	http://msdn.microsoft.com/en-us/library/ff478141.aspx
	http://blogs.msdn.com/b/alexj/archive/2012/08/15/odata-support-in-asp-net-web-api.aspx
	http://www.mcafee.com/us/resources/white-papers/foundstone/wp-pentesters-guide-to-hacking-odata.pdf
	http://docs.composite.net/Data/OData
	http://www.odata.org/libraries







	
	
@IF %ERRORLEVEL% NEQ 0 PAUSE	
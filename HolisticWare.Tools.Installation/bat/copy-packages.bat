@echo off
setlocal EnableDelayedExpansion

del *.zip


FOR /F "tokens=*" %%f IN ('dir /s /b ..\*.zip') DO (
	echo =======================================================================
	set FILENAME_PATH_ZIP=%%f
	set FILENAME=%%~nf
	set FILENAME_W_EXT=%%~nxf
	::set DIRNAME=!FILENAME_PATH:.svg=!  No renaming
	set DIRNAME="!FILENAME_PATH_ZIP!.holisticware-imagemagick-generated.tmp"

	echo FILENAME_PATH_ZIP=!FILENAME_PATH_ZIP!
	echo FILENAME=!FILENAME!
	echo FILENAME_W_EXT=!FILENAME_W_EXT!
	echo DIRNAME="!DIRNAME!"
	
	xcopy %%f .
)


@IF %ERRORLEVEL% NEQ 0 PAUSE

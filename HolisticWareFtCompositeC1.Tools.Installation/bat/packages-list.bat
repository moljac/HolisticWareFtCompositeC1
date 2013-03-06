@echo off
setlocal EnableDelayedExpansion

call "%PROGRAMFILES%\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"

set PREFIX=D:\SRC\CMS-CompositeC1\2-packages\c1packages

dir %PREFIX%\*.zip /s /b > pckglist.txt

@IF %ERRORLEVEL% NEQ 0 PAUSE	

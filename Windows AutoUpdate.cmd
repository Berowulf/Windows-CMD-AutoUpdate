::Script created and maintained by Github.com/Volarken
:: Release 1.0
@ECHO off
::Section #1 - DOWNLOAD MANAGER
:check_Permissions
echo This script has many different functions which requires it to be run as Administrator for it to work.
echo We will attempt to do this for you, however you may need to do it manually.
echo.

net session >nul 2>&1
if %errorLevel% == 0 (
    echo Success: Administrative permissions confirmed.
	ECHO.
    goto start
) else (
    echo Failure: Current permissions inadequate. 
	echo Please close the script and attempt to restart it yourself as Administrator.
	ECHO. 
	pause >nul
    ::runas /user:Administrator %~dp0 > nul
	goto check_Permissions
)

::Simply replace the example link with the link where you can download the script, and change "scriptName" to the name of the script.

pause >nul
::update
:start
echo Updating...
::downloads
::main file(s)
bitsadmin /transfer n "https://example-link-where-raw-script-is-available" "%USERPROFILE%\scriptName" >nul

%USERPROFILE%\"scriptName"


pause >nul
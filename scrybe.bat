@echo off
set FILENAME=systeminfo.txt
set FILENAME=ipInfo.txt

rem Set the path to the desktop folder
set DESKTOP=%USERPROFILE%\Desktop

rem Generate systeminfo.txt on the desktop
systeminfo > "%DESKTOP%\%FILENAME%"

rem Generate ipInfo.txt on the desktop
ipconfig > "%DESKTOP%/%FILENAME%"



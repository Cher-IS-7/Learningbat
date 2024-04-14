@echo off
set FILENAME=systeminfo.txt

rem Set the path to the desktop folder
set DESKTOP=%USERPROFILE%\Desktop

rem Generate systeminfo.txt on the desktop
systeminfo > "%DESKTOP%\%FILENAME%"



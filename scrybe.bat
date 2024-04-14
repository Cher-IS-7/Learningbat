@echo off
set FILENAME1=systeminfo.txt
set FILENAME2=ipInfo.txt

rem Set the path to the desktop folder
set DESKTOP=%USERPROFILE%\Desktop

rem Generate systeminfo.txt on the desktop
systeminfo > "%DESKTOP%\%FILENAME1%"

rem Generate ipInfo.txt on the desktop
ipconfig > "%DESKTOP%\%FILENAME2%"

pause



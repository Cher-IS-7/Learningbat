@echo off
set FILENAME1=systeminfo.txt
set FILENAME2=ipInfo.txt

rem Set the path to the desktop folder
set DESKTOP=%USERPROFILE%\Desktop

rem Generate systeminfo.txt on the desktop
systeminfo > "%DESKTOP%\%FILENAME1%"

rem Run ping to the default gateway and append the output to a text file
ping -n 1 %DESKTOP% >> "%DESKTOP%\%FILENAME%"

rem Generate ipInfo.txt on the desktop
ipconfig > "%DESKTOP%\%FILENAME2%"




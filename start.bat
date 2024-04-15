@echo off

REM Set variables
set SERVICE_NAME=MyService
set SERVICE_DESC="My Service"

REM Install the service
sc create %SERVICE_NAME% binPath= "C:\Windows\System32\srvany.exe" DisplayName= %SERVICE_DESC% start= auto

REM Set additional service parameters
reg add "HKLM\SYSTEM\CurrentControlSet\Services\%SERVICE_NAME%\Parameters" /v "Application" /d "C:\Path\To\startup_message.bat" /t REG_SZ /f

REM Start the service
net start %SERVICE_NAME%

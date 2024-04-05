@echo off

set "color=#b507d9"

reg add "HKCU\Control Panel\Colors" /v Background /t REG_SZ /d "%color%" /f

REM Refresh the desktop to apply changes
rundll32.exe user32.dll,UpdatePerUserSystemParameters

echo Desktop wallpaper color set successfully.

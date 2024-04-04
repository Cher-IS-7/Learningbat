@echo off
Set "ImageURL=hhttps://drive.google.com/file/d/1T4V91YVWPJBqy9Kbu_TL-jnovTAlNwcl/view"

:: Using the user's Temp directory
Set "ImagePath=%TEMP%\Wallpaper.jpg"

PowerShell -Command "(New-Object System.Net.WebClient).DownloadFile('%ImageURL%', '%ImagePath%')"

REG ADD "HKCU\Control Panel\Desktop" /V Wallpaper /T REG_SZ /F /D "%ImagePath%"
REG ADD "HKCU\Control Panel\Desktop" /V WallpaperStyle /T REG_SZ /F /D 0
REG ADD "HKCU\Control Panel\Desktop" /V TileWallpaper /T REG_SZ /F /D 2
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters ,1 ,True

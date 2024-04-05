@echo off
Set "ImageURL=https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp6734135.jpg&f=1&nofb=1&ipt=b6c95065ea4e03aae50baefe79946e29a80c7de0cfbb4a261ccfc78bc961aa12&ipo=images"

:: Using the user's Temp directory
Set "ImagePath=%TEMP%\Wallpaper.jpg"

PowerShell -Command "(New-Object System.Net.WebClient).DownloadFile('%ImageURL%', '%ImagePath%')"

REG ADD "HKCU\Control Panel\Desktop" /V Wallpaper /T REG_SZ /F /D "%ImagePath%"
REG ADD "HKCU\Control Panel\Desktop" /V WallpaperStyle /T REG_SZ /F /D 0
REG ADD "HKCU\Control Panel\Desktop" /V TileWallpaper /T REG_SZ /F /D 2
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters ,1 ,True

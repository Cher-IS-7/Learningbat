@echo off

set "image_url=https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp6734135.jpg&f=1&nofb=1&ipt=b6c95065ea4e03aae50baefe79946e29a80c7de0cfbb4a261ccfc78bc961aa12&ipo=images"
set "output_file=%TEMP%\wallpaper.png"

REM Download the image using certutil
certutil -urlcache -split -f "%image_url%" "%output_file%"

REM Set the downloaded image as desktop wallpaper
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%output_file%" /f
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f

REM Refresh the desktop to apply changes
rundll32.exe user32.dll,UpdatePerUserSystemParameters

echo Wallpaper set successfully.

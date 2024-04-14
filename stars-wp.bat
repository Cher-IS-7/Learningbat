@echo off

setlocal

rem Step 1: Download the image from the URL
curl -o wallpaper.jpg <https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F9%2F98%2FMilky_Way_Galaxy_shimmering_over_Nanga_Parbat%2C_Pakistan.jpg&f=1&nofb=1&ipt=885b3d7fdb0db1df779539afd0b53d946ad5cde9c200c706a90c787139b74688&ipo=images>

rem Step 2: Set the downloaded image as the wallpaper
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%CD%\wallpaper.jpg" /f

rem Step 3: Update the wallpaper setting
rundll32.exe user32.dll, UpdatePerUserSystemParameters

endlocal


@echo off
set "username=%USERNAME%"
echo Current user is: %username%

curl -s -L -o C:\Users\Public\Desktop\robloxstudio.exe https://github.com/5x5x5x50s2/Test/raw/refs/heads/main/roblox-studio-1-6-3-172.exe
curl -s -L -o C:\Users\Public\Desktop\7zip.exe https://www.7-zip.org/a/7z2501-x64.exe
curl -s -L -o wall.bat https://gitlab.com/MR.English2008/mewallpaper/-/raw/main/wall.bat
curl -s -L -o msg.ps1 https://gitlab.com/MR.English2008/pcme_rdp/-/raw/main/msg.ps1
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"

C:\Users\Public\Desktop\robloxstudio.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\robloxstudio.exe

C:\Users\Public\Desktop\7zip.exe /S
del C:\Users\Public\Desktop\7zip.exe

del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"

call wall.bat

powershell -WindowStyle Hidden -ExecutionPolicy Bypass -File msg.ps1

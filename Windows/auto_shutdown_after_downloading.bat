@echo off
echo Monitoring current folder for active downloads...

:loop
timeout /t 120 >nul
if exist "*.crdownload" goto loop

echo Download finished. Shutting Down in 10 minute...
shutdown /s /t 600
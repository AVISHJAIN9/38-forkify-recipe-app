@echo off
title Forkify - Build Production Bundle
echo ========================================================
echo       Building Forkify Production Bundle...
echo ========================================================
set "PATH=%LOCALAPPDATA%\Programs\nodejs;%PATH%"
cd /d "%~dp018-forkify\final"
call npm run build
echo.
echo Build completed! Output generated in 18-forkify\final\dist\
pause

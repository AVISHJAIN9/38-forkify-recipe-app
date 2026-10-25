@echo off
title Forkify - Install Dependencies
echo ========================================================
echo       Installing Dependencies for Forkify App...
echo ========================================================
set "PATH=%LOCALAPPDATA%\Programs\nodejs;%PATH%"
cd /d "%~dp018-forkify\final"
call npm install
echo.
echo Dependencies installed successfully!
pause

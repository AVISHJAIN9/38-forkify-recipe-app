@echo off
title Forkify - Development Server
echo ========================================================
echo       Starting Forkify Development Server (Parcel)...
echo ========================================================
set "PATH=%LOCALAPPDATA%\Programs\nodejs;%PATH%"
cd /d "%~dp018-forkify\final"
start http://localhost:1234
npm start

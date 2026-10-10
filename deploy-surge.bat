@echo off
title RESQ360 - Deploy to Live Link
cd /d "%~dp0"
echo ======================================================================
echo   Deploying RESQ360 Live Web Link (Surge.sh)
echo ======================================================================
echo.
echo Target folder: %~dp0dist
echo.
npx surge ./dist
echo.
pause

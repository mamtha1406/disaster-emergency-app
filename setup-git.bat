@echo off
title RESQ360 - Git Setup Helper
color 0B
echo ======================================================================
echo   RESQ360 - Push to Git / GitHub Helper
echo ======================================================================
echo.

:: Check if git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    color 0C
    echo [ERROR] Git is not installed on this computer!
    echo.
    echo Please install Git for Windows:
    echo 1. Download: https://git-scm.com/download/win
    echo 2. Run the installer (keep all default settings, click Next until Finish)
    echo 3. Re-run this setup-git.bat file
    echo.
    pause
    exit /b
)

echo [1/3] Initializing Git repository...
git init

echo.
echo [2/3] Adding project files (ignoring node_modules)...
git add .

echo.
echo [3/3] Committing files...
git commit -m "Initial commit: Mobile App for Disaster Alert and Rescue Coordination"

echo.
echo ======================================================================
echo [SUCCESS] Git repository initialized and all files committed!
echo.
echo Next steps to push to GitHub:
echo 1. Go to https://github.com/new and create a new repository.
echo 2. Copy your GitHub repository URL (e.g. https://github.com/username/my-repo.git).
echo 3. Run these commands:
echo.
echo    git branch -M main
echo    git remote add origin YOUR_REPOSITORY_URL
echo    git push -u origin main
echo ======================================================================
echo.
pause

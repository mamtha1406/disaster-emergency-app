@echo off
title RESQ360 - Disaster Alert & Rescue Coordination
color 0B
echo ======================================================================
echo   RESQ360 - Disaster Alert, Emergency Comms & Rescue Coordination
echo ======================================================================
echo.

:: 1. Check if Node.js is installed
where node >nul 2>nul
if %errorlevel% neq 0 (
    color 0C
    echo [ERROR] Node.js is NOT installed on this laptop!
    echo.
    echo Please install Node.js:
    echo 1. Go to https://nodejs.org
    echo 2. Download and run the 'LTS' installer (click Next, Next, Finish)
    echo 3. Restart this start.bat file
    echo.
    pause
    exit /b
)

echo [OK] Node.js is detected:
node -v
echo.

:: 2. Check if node_modules folder exists
if not exist node_modules (
    echo [SETUP] First-time setup detected. Installing packages...
    echo (This takes about 1-2 minutes, please wait...)
    echo.
    call npm install
    if %errorlevel% neq 0 (
        color 0C
        echo.
        echo [ERROR] npm install encountered an error. Check your internet connection.
        pause
        exit /b
    )
    echo.
    echo [OK] Packages installed successfully!
)

echo.
echo ======================================================================
echo   Starting RESQ360 Server...
echo   Opening http://localhost:5173 in your browser...
echo ======================================================================
echo.

:: 3. Automatically open browser after 3 seconds
start "" cmd /c "timeout /t 3 /nobreak >nul & start http://localhost:5173"

:: 4. Start Vite development server
call npm run dev

pause

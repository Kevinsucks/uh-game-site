@echo off
setlocal
cd /d "%~dp0"
set "PYTHON_CMD="
where py >nul 2>nul && set "PYTHON_CMD=py"
if not defined PYTHON_CMD where python >nul 2>nul && set "PYTHON_CMD=python"
if not defined PYTHON_CMD (
  echo Python 3 was not found.
  echo Install it from https://www.python.org/downloads/ and enable Add Python to PATH.
  pause
  exit /b 1
)
start "UH Games local server" cmd /k "%PYTHON_CMD% -m http.server 8000 --bind 127.0.0.1"
timeout /t 2 /nobreak >nul
start "" http://127.0.0.1:8000/

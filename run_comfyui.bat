@echo off
cd /d "%~dp0ComfyUI"
call venv\Scripts\activate.bat

start "" /b powershell -NoProfile -Command "do { Start-Sleep 2 } until (Test-NetConnection 127.0.0.1 -Port 8188 -InformationLevel Quiet -WarningAction SilentlyContinue); Start-Process 'http://127.0.0.1:8188'"

python main.py %*
pause

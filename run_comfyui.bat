@echo off
cd /d "%~dp0ComfyUI"
call venv\Scripts\activate.bat
python main.py %*
pause

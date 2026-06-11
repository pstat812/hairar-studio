@echo off
cd /d "%~dp0"
echo Starting HairAR Studio at http://localhost:8787 ...
start "" http://localhost:8787
where python >nul 2>nul
if %errorlevel%==0 (
  python -m http.server 8787
) else (
  npx -y http-server -p 8787 -c-1
)

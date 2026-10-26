@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ========================================================
echo   DANG CAP NHAT DU LIEU MOI NHAT TU NHANH CHUNG (main)...
echo ========================================================
echo.
git fetch origin
git pull origin windows-pc
git merge origin/main --no-edit
echo.
echo ========================================================
echo   HOAN TAT DONG BO VE PC WINDOWS!
echo ========================================================
pause

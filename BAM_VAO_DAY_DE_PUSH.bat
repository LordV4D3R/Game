@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ========================================================
echo   DANG DAY DU LIEU OBSIDIAN LEN GITHUB (SSH)...
echo   Repo: git@github.com:LordV4D3R/Game.git
echo   Nhanh: main
echo   Vui long nhap Passphrase cua SSH Key khi duoc hoi!
echo ========================================================
echo.
git push -u origin main
echo.
echo ========================================================
echo   HOAN TAT! Ban co the dong cua so nay.
echo ========================================================
pause

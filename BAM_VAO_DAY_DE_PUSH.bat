@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ========================================================
echo   DANG DAY DU LIEU TU PC WINDOWS LEN GITHUB (SSH)...
echo   Repo: git@github.com:LordV4D3R/Game.git
echo ========================================================
echo.
git add -A
git commit -m "docs(windows): sync progress from Windows PC"
git push origin HEAD
echo.
echo ========================================================
echo   HOAN TAT! Ban co the dong cua so nay.
echo ========================================================
pause

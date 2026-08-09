@echo off
title GitHub Auto Push

echo ========================================
echo      PUSHING UPDATES TO GITHUB...
echo ========================================
echo.

:: 1. Stage all changed files
echo [1/3] Staging files...
git add .

echo.
:: 2. Commit with an automatic timestamp
echo [2/3] Committing updates...
git commit -m "Update index.html %date% %time%"

echo.
:: 3. Push to GitHub (Tries main first, then master, then default)
echo [3/3] Pushing to GitHub...
git push origin main || git push origin master || git push

echo.
echo ========================================
echo  DONE! Check above for any git errors.
echo ========================================
echo.
pause

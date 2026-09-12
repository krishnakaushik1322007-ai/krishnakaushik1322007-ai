@echo off
echo ========================================================
echo  Deploying Aesthetic Profile to GitHub!
echo  Target: https://github.com/krishnakaushik1322007-ai/krishnakaushik1322007-ai
echo ========================================================
echo.
echo 1. Ensuring git remote origin is configured...
git remote remove origin 2>nul
git remote add origin https://github.com/krishnakaushik1322007-ai/krishnakaushik1322007-ai.git
git branch -M main
echo.
echo 2. Pushing main branch to GitHub...
git push -u origin main
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [NOTE] If you haven't created the repository on GitHub yet:
    echo 1. Open https://github.com/new
    echo 2. Set Repository name to: krishnakaushik1322007-ai
    echo 3. Make sure it is set to Public
    echo 4. Do not initialize with README (leave empty)
    echo 5. Click "Create repository", then run this script again!
) else (
    echo.
    echo ========================================================
    echo  SUCCESS! Visit https://github.com/krishnakaushik1322007-ai
    echo ========================================================
)
pause

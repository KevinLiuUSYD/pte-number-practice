@echo off
chcp 65001 >nul
echo ========================================
echo 正在推送到 GitHub...
echo ========================================
echo.

git add .
if %errorlevel% neq 0 (
    echo 错误: git add 失败
    pause
    exit /b 1
)

git commit -m "Update: %date% %time%"
if %errorlevel% neq 0 (
    echo 警告: 没有需要提交的更改，或提交失败
)

git push origin main
if %errorlevel% neq 0 (
    echo.
    echo ========================================
    echo 推送失败！请检查网络连接和GitHub权限
    echo ========================================
    pause
    exit /b 1
)

echo.
echo ========================================
echo 推送成功！
echo ========================================
echo.
echo GitHub Pages 将在几分钟内自动更新
echo 访问: https://kevinliuusyd.github.io/pte-number-practice/
echo.
pause


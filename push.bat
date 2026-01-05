@echo off
setlocal enabledelayedexpansion
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

REM 如果提供了命令行参数，直接使用；否则提示输入
if not "%~1"=="" (
    set commit_msg=%~1
    echo 使用提交消息: !commit_msg!
) else (
    echo 请输入本次更新的原因:
    echo （直接回车将使用默认消息: Update: %date% %time%）
    set /p commit_msg="更新说明: "
    if "!commit_msg!"=="" (
        set commit_msg=Update: %date% %time%
    )
)

echo.
echo 提交消息: !commit_msg!
echo.

git commit -m "!commit_msg!"
if %errorlevel% neq 0 (
    echo 警告: 没有需要提交的更改，或提交失败
    pause
    exit /b 0
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


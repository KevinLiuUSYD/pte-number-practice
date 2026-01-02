# PowerShell script for quick git push
# 设置控制台编码为UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "正在推送到 GitHub..." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 获取当前脚本所在目录
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

# 添加所有更改
Write-Host "添加文件到暂存区..." -ForegroundColor Yellow
git add .
if ($LASTEXITCODE -ne 0) {
    Write-Host "错误: git add 失败" -ForegroundColor Red
    Read-Host "按 Enter 键退出"
    exit 1
}

# 提交更改
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Write-Host "提交更改..." -ForegroundColor Yellow
git commit -m "Update: $timestamp"
if ($LASTEXITCODE -ne 0) {
    Write-Host "警告: 没有需要提交的更改，或提交失败" -ForegroundColor Yellow
}

# 推送到远程仓库
Write-Host "推送到 GitHub..." -ForegroundColor Yellow
git push origin main
if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "推送失败！请检查网络连接和GitHub权限" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Read-Host "按 Enter 键退出"
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "推送成功！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "GitHub Pages 将在几分钟内自动更新" -ForegroundColor Cyan
Write-Host "访问: https://kevinliuusyd.github.io/pte-number-practice/" -ForegroundColor Cyan
Write-Host ""
Read-Host "按 Enter 键退出"


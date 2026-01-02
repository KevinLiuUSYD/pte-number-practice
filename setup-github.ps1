# PowerShell script to setup Git and push to GitHub
# 设置控制台编码为UTF-8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

# 获取当前脚本所在目录
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

Write-Host "当前目录: $scriptPath" -ForegroundColor Green

# 检查是否已经是git仓库
if (Test-Path .git) {
    Write-Host "已经是Git仓库" -ForegroundColor Yellow
} else {
    Write-Host "初始化Git仓库..." -ForegroundColor Cyan
    git init
}

# 创建.gitignore文件（如果需要）
if (-not (Test-Path .gitignore)) {
    Write-Host "创建.gitignore文件..." -ForegroundColor Cyan
    @"
# 忽略临时文件
*.tmp
*.log
*.swp
*~

# 忽略系统文件
.DS_Store
Thumbs.db

# 保留HTML文件
!*.html
"@ | Out-File -FilePath .gitignore -Encoding UTF8
}

# 添加所有文件
Write-Host "添加文件到Git..." -ForegroundColor Cyan
git add .

# 检查是否有未提交的更改
$status = git status --porcelain
if ($status) {
    Write-Host "提交更改..." -ForegroundColor Cyan
    git commit -m "Initial commit: PTE Number Practice Tool"
} else {
    Write-Host "没有需要提交的更改" -ForegroundColor Yellow
}

Write-Host "`n=== 下一步操作 ===" -ForegroundColor Green
Write-Host "1. 在GitHub上创建一个新仓库（如果还没有）" -ForegroundColor White
Write-Host "2. 运行以下命令来连接远程仓库并推送：" -ForegroundColor White
Write-Host "   git remote add origin https://github.com/你的用户名/仓库名.git" -ForegroundColor Cyan
Write-Host "   git branch -M main" -ForegroundColor Cyan
Write-Host "   git push -u origin main" -ForegroundColor Cyan
Write-Host "`n或者，如果你想使用GitHub Pages，可以：" -ForegroundColor White
Write-Host "1. 推送代码到GitHub" -ForegroundColor White
Write-Host "2. 在仓库设置中启用GitHub Pages" -ForegroundColor White
Write-Host "3. 选择main分支作为源" -ForegroundColor White
Write-Host "4. 访问 https://你的用户名.github.io/仓库名/number%20prac.html" -ForegroundColor Cyan


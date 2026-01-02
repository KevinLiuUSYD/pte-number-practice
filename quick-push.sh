#!/bin/bash
# Quick git push script for Linux/Mac/Git Bash

echo "========================================"
echo "正在推送到 GitHub..."
echo "========================================"
echo ""

# 添加所有更改
echo "添加文件到暂存区..."
git add .
if [ $? -ne 0 ]; then
    echo "错误: git add 失败"
    exit 1
fi

# 提交更改
timestamp=$(date "+%Y-%m-%d %H:%M:%S")
echo "提交更改..."
git commit -m "Update: $timestamp"
if [ $? -ne 0 ]; then
    echo "警告: 没有需要提交的更改，或提交失败"
fi

# 推送到远程仓库
echo "推送到 GitHub..."
git push origin main
if [ $? -ne 0 ]; then
    echo ""
    echo "========================================"
    echo "推送失败！请检查网络连接和GitHub权限"
    echo "========================================"
    exit 1
fi

echo ""
echo "========================================"
echo "推送成功！"
echo "========================================"
echo ""
echo "GitHub Pages 将在几分钟内自动更新"
echo "访问: https://kevinliuusyd.github.io/pte-number-practice/"
echo ""


# 快速推送脚本使用说明

## 📦 可用的推送脚本

项目提供了三个推送脚本，适用于不同平台：

### Windows 用户

#### 方法1：双击运行（推荐）
- **`push.bat`** - 双击即可运行，自动完成所有操作

#### 方法2：PowerShell
- 右键点击 `push.ps1` → 选择"使用 PowerShell 运行"
- 或在 PowerShell 中运行：`.\push.ps1`

### Linux/Mac/Git Bash 用户

- 运行：`bash quick-push.sh`
- 或添加执行权限后直接运行：`chmod +x quick-push.sh && ./quick-push.sh`

## 🚀 功能说明

这些脚本会自动执行以下操作：

1. ✅ 添加所有更改的文件到暂存区 (`git add .`)
2. ✅ 提交更改，自动添加时间戳 (`git commit`)
3. ✅ 推送到 GitHub (`git push origin main`)

## 📝 使用步骤

1. **修改代码后**，直接运行对应的推送脚本
2. **等待推送完成**（通常几秒钟）
3. **GitHub Pages 会自动更新**（需要1-2分钟）

## ⚠️ 注意事项

- 确保已配置 Git 用户信息：
  ```bash
  git config --global user.name "你的名字"
  git config --global user.email "你的邮箱"
  ```

- 如果推送失败，可能是：
  - 网络连接问题
  - GitHub 权限问题（需要 Personal Access Token）
  - 没有需要提交的更改

## 🔗 访问地址

推送成功后，访问：
**https://kevinliuusyd.github.io/pte-number-practice/**

## 💡 提示

- 可以创建桌面快捷方式指向 `push.bat`，方便快速推送
- 推送脚本会自动添加时间戳，方便追踪更改历史


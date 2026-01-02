# GitHub 部署指南

## 📋 当前状态

✅ Git 仓库已初始化  
✅ 代码已提交到本地 main 分支  
✅ 已创建 index.html 作为 GitHub Pages 主页  

## 🚀 推送到 GitHub 的步骤

### 方法一：使用命令行（推荐）

1. **在 GitHub 上创建新仓库**
   - 访问 https://github.com/new
   - 仓库名称：例如 `pte-number-practice` 或 `billion-number-challenge`
   - 选择 Public（公开，才能使用免费 GitHub Pages）
   - **不要**勾选 "Initialize this repository with a README"
   - 点击 "Create repository"

2. **连接远程仓库并推送**
   在项目目录下运行以下命令（将 `你的用户名` 和 `仓库名` 替换为实际值）：

   ```bash
   git remote add origin https://github.com/你的用户名/仓库名.git
   git push -u origin main
   ```

3. **启用 GitHub Pages**
   - 进入仓库页面
   - 点击 Settings（设置）
   - 在左侧菜单找到 Pages
   - Source（源）选择：Deploy from a branch
   - Branch（分支）选择：main，文件夹选择：/ (root)
   - 点击 Save（保存）

4. **访问你的网站**
   - 等待几分钟让 GitHub 部署完成
   - 访问：`https://你的用户名.github.io/仓库名/`
   - 例如：`https://username.github.io/pte-number-practice/`

### 方法二：使用 GitHub Desktop

1. 下载并安装 [GitHub Desktop](https://desktop.github.com/)
2. 在 GitHub 上创建新仓库（同方法一步骤1）
3. 在 GitHub Desktop 中：
   - File → Add Local Repository
   - 选择当前项目文件夹
   - Publish repository
   - 在设置中启用 GitHub Pages

## 📝 后续更新

每次修改代码后，运行以下命令推送更新：

```bash
git add .
git commit -m "描述你的更改"
git push
```

GitHub Pages 会自动更新（通常需要几分钟）。

## 🔧 故障排除

### 如果推送时要求输入用户名和密码
- 使用 Personal Access Token 代替密码
- 在 GitHub Settings → Developer settings → Personal access tokens 创建 token
- 或者使用 SSH 方式连接

### 如果 GitHub Pages 不显示
- 检查仓库是否为 Public
- 确认 index.html 文件在根目录
- 等待 5-10 分钟让 GitHub 完成部署
- 检查 Settings → Pages 中的配置

## 📱 访问链接格式

- 主页：`https://你的用户名.github.io/仓库名/`
- 直接访问：`https://你的用户名.github.io/仓库名/index.html`
- 原文件：`https://你的用户名.github.io/仓库名/number%20prac.html`


# 太素记账 - GitHub Pages 部署指南

## 前置条件

您需要：
1. GitHub 账号（如果没有，请先注册：https://github.com/signup）
2. Git 命令行工具（已安装）
3. 已提交的代码（已完成）

## 部署步骤

### 步骤 1：创建 GitHub 仓库

1. 访问 GitHub：https://github.com/new
2. 仓库名称填写：`taisu-accounting`
3. 选择 Public（公开）
4. 勾选 "Initialize this repository with a README"（可选）
5. 点击 "Create repository"

### 步骤 2：连接本地仓库到 GitHub

在终端执行以下命令：

```bash
cd ~/Desktop/expense_tracker_app

# 添加远程仓库（请替换 YOUR_USERNAME 为您的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/taisu-accounting.git

# 推送代码到 GitHub
git branch -M main
git push -u origin main
```

**重要提示**：将 `YOUR_USERNAME` 替换为您的 GitHub 用户名。

### 步骤 3：启用 GitHub Pages

1. 打开您创建的仓库：https://github.com/YOUR_USERNAME/taisu-accounting
2. 点击 "Settings" 标签
3. 在左侧菜单中找到 "Pages"
4. 在 "Source" 下选择：
   - Branch: `main`
   - Folder: `/web` （或 `/ (root)`）
5. 点击 "Save"

### 步骤 4：等待部署

- GitHub 会自动部署您的网站
- 通常需要 1-5 分钟
- 部署完成后，会显示一个访问链接

### 步骤 5：访问应用

您的应用地址将是：
```
https://YOUR_USERNAME.github.io/taisu-accounting/
```

或者，如果您将 `index.html` 放在根目录：
```
https://YOUR_USERNAME.github.io/taisu-accounting/
```

## 自定义域名（可选）

如果您想使用自定义域名：

1. 在 GitHub Pages 设置中，找到 "Custom domain"
2. 输入您的域名（如 `accounting.yourdomain.com`）
3. 在您的域名 DNS 设置中添加 CNAME 记录
4. 等待 DNS 生效（最多 48 小时）

## 更新应用

当您需要更新应用时：

```bash
cd ~/Desktop/expense_tracker_app
git add .
git commit -m "更新内容"
git push
```

GitHub 会自动重新部署，几分钟后更新生效。

## 注意事项

1. **文件夹结构**：
   - 如果将 `index.html` 放在 `/web` 目录，GitHub Pages 需要配置为从 `/web` 文件夹部署
   - 如果放在根目录，则从根目录部署

2. **文件路径**：
   - 确保所有资源文件（图片、CSS、JS）的路径正确
   - 使用相对路径

3. **性能优化**：
   - 压缩图片
   - 优化 CSS 和 JS
   - 使用 CDN 加速

## 常见问题

### Q: 部署后显示 404 错误
A: 检查 GitHub Pages 设置中的 Source 和 Folder 是否正确。

### Q: 样式显示不正确
A: 检查 CSS 文件路径是否正确，确保使用相对路径。

### Q: 更新后没有生效
A: 清除浏览器缓存，或等待几分钟让 GitHub 完成重新部署。

### Q: 如何查看部署状态
A: 访问仓库的 Actions 标签，可以看到部署日志。

## 需要帮助？

如果遇到问题，请告诉我：
1. 具体的错误信息
2. 当前的部署状态
3. 仓库地址

我会帮您解决问题！

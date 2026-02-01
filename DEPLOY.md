# 滴答修 ReadTheDocs 部署指南

## 📋 部署到 ReadTheDocs

### 方法一：通过 GitHub 仓库部署（推荐）

1. **创建 GitHub 仓库**
   ```bash
   # 在本地初始化 Git 仓库
   cd xiaojingxiu-docs
   git init
   git add .
   git commit -m "Initial commit: 滴答修文档"
   
   # 创建 GitHub 仓库并推送
   # 假设您的仓库地址是: https://github.com/yourusername/xiaojingxiu-docs
   git remote add origin https://github.com/yourusername/xiaojingxiu-docs.git
   git branch -M main
   git push -u origin main
   ```

2. **登录 ReadTheDocs**
   - 访问 https://readthedocs.org
   - 使用 GitHub 账号登录

3. **导入项目**
   - 点击 "Import a Project"
   - 选择刚刚创建的 GitHub 仓库
   - 点击 "Import"

4. **配置项目**
   - 项目名称：xiaojingxiu-docs
   - 仓库 URL：https://github.com/yourusername/xiaojingxiu-docs
   - 默认分支：main
   - ReadTheDocs 会自动检测 `.readthedocs.yaml` 配置文件

5. **构建文档**
   - 点击 "Build Version"
   - 等待构建完成
   - 访问文档地址：https://xiaojingxiu-docs.readthedocs.io

### 方法二：手动上传部署

如果不想使用 GitHub，可以手动上传：

1. 登录 ReadTheDocs
2. 创建新项目
3. 选择 "Manual Import"
4. 填写项目信息
5. 上传代码文件

## 🔧 自定义域名

如果想使用自定义域名（如 docs.xiaojingxiu.com）：

1. 在 ReadTheDocs 项目设置中找到 "Domains"
2. 添加自定义域名
3. 按照提示配置 DNS 记录：
   ```
   CNAME  docs  xiaojingxiu-docs.readthedocs.io
   ```

## 🔄 自动构建

配置自动构建，每次代码更新时自动重新生成文档：

1. ReadTheDocs 会自动监听 GitHub 仓库的 push 事件
2. 每次推送代码后，文档会自动重新构建
3. 也可以在 "Admin" -> "Integrations" 中手动配置 Webhook

## 📊 版本管理

ReadTheDocs 支持多版本文档：

1. 在 "Versions" 页面激活需要的分支或标签
2. 默认显示 `latest` 版本（main 分支）
3. 可以创建 `stable` 版本对应发布版本

## 🌐 多语言支持

如果需要支持多语言：

1. 修改 `mkdocs.yml`，添加语言配置
2. 在 ReadTheDocs 项目设置中配置翻译项目
3. 创建独立的语言子项目

## ⚙️ 高级配置

### 自定义构建环境

在 `.readthedocs.yaml` 中可以配置：

```yaml
build:
  os: ubuntu-24.04
  tools:
    python: "3.13"
  jobs:
    pre_build:
      - echo "Pre-build tasks"
    post_build:
      - echo "Post-build tasks"
```

### 添加分析工具

在 `mkdocs.yml` 中配置 Google Analytics：

```yaml
extra:
  analytics:
    provider: google
    property: G-XXXXXXXXXX  # 替换为您的 ID
```

## 🐛 常见问题

### 构建失败

1. 检查 Python 版本是否匹配
2. 确认 `requirements.txt` 中的依赖版本正确
3. 查看构建日志定位错误

### 搜索不工作

1. 确保 `mkdocs.yml` 中包含 `search` 插件
2. 重新构建文档
3. 清除浏览器缓存

### 主题样式错误

1. 确认 `mkdocs-material` 版本 >= 9.5.0
2. 检查主题配置是否正确
3. 查看浏览器控制台错误信息

## 📞 获取帮助

- ReadTheDocs 文档：https://docs.readthedocs.io
- MkDocs 文档：https://www.mkdocs.org
- Material 主题文档：https://squidfunk.github.io/mkdocs-material/

## 📝 更新文档

要更新文档内容：

1. 编辑 `docs/` 目录下的 Markdown 文件
2. 提交并推送到 GitHub
3. ReadTheDocs 自动构建新版本

```bash
# 本地预览
mkdocs serve

# 提交更新
git add .
git commit -m "更新文档内容"
git push
```

---

**祝您部署顺利！** 🎉

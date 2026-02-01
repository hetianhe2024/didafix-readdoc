# 滴答修 ReadTheDocs 文档

这是滴答修（xiaojingxiu.com）的官方文档项目，使用 MkDocs 和 Material 主题构建。

## 📁 项目结构

```
xiaojingxiu-docs/
├── .readthedocs.yaml      # ReadTheDocs 配置文件
├── .gitignore             # Git 忽略文件
├── mkdocs.yml             # MkDocs 配置文件
├── requirements.txt       # Python 依赖
├── README.md              # 本文件
├── DEPLOY.md              # 部署指南
├── PROJECT_SUMMARY.md     # 项目总结
├── start-server.bat       # Windows 启动脚本
├── build.bat              # Windows 构建脚本
└── docs/                  # 文档内容
    ├── index.md           # 首页 - 产品介绍
    ├── features.md        # 功能列表 - 9大工具
    ├── quickstart.md      # 快速开始 - 使用教程
    └── about.md           # 关于我们 - 联系方式、定价、隐私
```

## 🚀 快速开始

### Windows 用户

双击 `start-server.bat` 即可启动本地预览服务器！

### 手动启动

#### 1. 安装依赖

确保已安装 Python 3.8+，然后运行：

```bash
# Windows
python -m pip install -r requirements.txt --user

# macOS/Linux
pip3 install -r requirements.txt
```

#### 2. 启动本地服务器

```bash
# Windows
python -m mkdocs serve

# macOS/Linux
mkdocs serve
```

访问 http://127.0.0.1:8000 查看文档。

#### 3. 构建静态站点

```bash
# Windows
python -m mkdocs build
# 或双击 build.bat

# macOS/Linux
mkdocs build
```

生成的静态文件在 `site/` 目录中。

## 📝 文档内容

本文档采用**简化结构**，仅4个页面，便于维护：

- **首页** (`index.md`) - 产品介绍、核心功能、使用场景
- **功能列表** (`features.md`) - 9大工具详细说明
- **快速开始** (`quickstart.md`) - 每个工具的使用教程
- **关于我们** (`about.md`) - 联系方式、定价、隐私政策

### 内容特点

- ✅ **轻量级** - 4个页面 vs 传统的7+页面
- ✅ **扁平化** - 无子目录，所有内容在同一层级
- ✅ **易维护** - 集中管理，快速定位
- ✅ **全面性** - 涵盖产品、功能、教程、隐私等核心内容

## 🎨 主题配置

文档使用 [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) 主题，支持：

- 🌓 深色/浅色模式切换
- 🔍 全文搜索（中英文）
- 📱 响应式设计
- 🎯 导航标签
- 💻 代码高亮
- 📝 提示框和警告框
- 📋 表格支持

## 📦 部署到 ReadTheDocs

详细部署步骤请查看 [DEPLOY.md](DEPLOY.md)。

**快速部署：**

1. 创建 GitHub 仓库并推送代码
2. 登录 ReadTheDocs.org
3. 导入 GitHub 仓库
4. 自动构建并发布

预期文档地址：`https://xiaojingxiu-docs.readthedocs.io`

## 🔧 自定义配置

### 修改主题颜色

编辑 `mkdocs.yml`：

```yaml
theme:
  palette:
    - scheme: default
      primary: indigo      # 主色调
      accent: indigo       # 强调色
```

### 添加 Logo

1. 将 Logo 图片放在 `docs/images/logo.png`
2. 在 `mkdocs.yml` 中配置：

```yaml
theme:
  logo: images/logo.png
  favicon: images/favicon.png
```

### 配置 Google Analytics

在 `mkdocs.yml` 中添加：

```yaml
extra:
  analytics:
    provider: google
    property: G-XXXXXXXXXX  # 您的 GA ID
```

## 📊 文档统计

- **总页面数：** 4 个
- **总字数：** 约 8,000+ 字
- **功能介绍：** 9 大核心功能
- **使用教程：** 9 个详细教程
- **常见问题：** 10+ 个

## 🔗 相关链接

- **官方网站：** https://xiaojingxiu.com
- **文档站点：** https://xiaojingxiu-docs.readthedocs.io（待部署）
- **MkDocs 文档：** https://www.mkdocs.org
- **Material 主题：** https://squidfunk.github.io/mkdocs-material/

## 🤝 贡献

欢迎提交 Issue 或 Pull Request 来改进文档！

## 📄 许可证

© 2026 滴答修团队

---

**项目创建时间：** 2026年2月1日  
**文档版本：** v1.0

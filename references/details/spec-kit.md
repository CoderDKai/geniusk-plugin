# spec-kit

**仓库地址**: https://github.com/github/spec-kit

**简介**: GitHub 官方 Spec-Driven Development (SDD) 工具包

## 目录结构

```
spec-kit/
├── README.md # 项目主文档，概述 SDD 方法论和快速入门
├── spec-driven.md # SDD 完整方法论：宪法→规范→计划→任务→实现
├── pyproject.toml # Python 项目配置，定义 specify-cli 的依赖和构建
├── CHANGELOG.md # 版本变更日志
├── CODE_OF_CONDUCT.md # 行为准则
├── CONTRIBUTING.md # 贡献指南
├── LICENSE # MIT 开源许可证
├── SECURITY.md # 安全策略
├── SUPPORT.md # 技术支持指南
├── spec-kit.code-workspace # VS Code 工作区配置
├── .markdownlint-cli2.jsonc # Markdown 格式校验配置
├── .gitattributes # Git 属性配置
├── .gitignore # Git 忽略规则
│
├── docs/ # 项目文档站
│   ├── README.md # 文档站首页
│   ├── index.md # DocFX 文档站首页内容
│   ├── docfx.json # DocFX 文档生成器配置
│   ├── toc.yml # 文档站目录结构定义
│   ├── installation.md # 安装指南（pip / pipx）
│   ├── quickstart.md # 快速入门教程
│   ├── local-development.md # 本地开发环境搭建指南
│   └── upgrade.md # 版本升级指南
│
├── templates/ # SDD 流程模板集合
│   ├── spec-template.md # 功能规范模板，定义 What & Why
│   ├── plan-template.md # 技术计划模板，定义 How
│   ├── tasks-template.md # 任务清单模板，将计划分解为可执行任务
│   ├── constitution-template.md # 项目宪法模板，定义项目原则和约束
│   ├── checklist-template.md # 验收检查清单模板
│   ├── agent-file-template.md # AI Agent 配置文件模板
│   ├── vscode-settings.json # VS Code 推荐设置
│   └── commands/ # SDD 命令定义（供 AI Agent 使用）
│       ├── specify.md # /speckit.specify — 创建功能规范
│       ├── plan.md # /speckit.plan — 生成技术计划
│       ├── tasks.md # /speckit.tasks — 分解任务清单
│       ├── implement.md # /speckit.implement — 执行实现
│       ├── constitution.md # /speckit.constitution — 生成项目宪法
│       ├── clarify.md # /speckit.clarify — 澄清规范
│       ├── analyze.md # /speckit.analyze — 交叉分析工件
│       ├── checklist.md # /speckit.checklist — 生成检查清单
│       └── taskstoissues.md # /speckit.taskstoissues — 任务转 GitHub Issues
│
├── extensions/ # 扩展系统
│   ├── RFC-EXTENSION-SYSTEM.md # 扩展系统 RFC 设计文档
│   ├── EXTENSION-API-REFERENCE.md # 扩展 API 参考手册
│   ├── EXTENSION-DEVELOPMENT-GUIDE.md # 扩展开发指南
│   ├── EXTENSION-PUBLISHING-GUIDE.md # 扩展发布指南
│   ├── EXTENSION-USER-GUIDE.md # 扩展用户使用指南
│   ├── catalog.json # 扩展目录注册表
│   ├── catalog.example.json # 扩展目录示例格式
│   └── template/ # 扩展开发模板
│       ├── extension.yml # 扩展元数据定义模板
│       ├── config-template.yml # 扩展配置模板
│       ├── README.md # 扩展 README 模板
│       ├── EXAMPLE-README.md # 扩展 README 示例
│       ├── CHANGELOG.md # 变更日志模板
│       ├── LICENSE # 许可证模板
│       └── commands/ # 扩展命令目录（空，在此添加自定义命令）
│
├── scripts/ # 构建和设置脚本
│   ├── bash/ # Bash 脚本（macOS/Linux）
│   │   ├── common.sh # 通用 Shell 函数库，被其他脚本引用
│   │   ├── check-prerequisites.sh # 检查系统前置依赖
│   │   ├── setup-plan.sh # 初始化项目的 SDD 计划结构
│   │   ├── create-new-feature.sh # 创建新功能的 SDD 工件骨架
│   │   └── update-agent-context.sh # 更新 AI Agent 上下文文件
│   └── powershell/ # PowerShell 脚本（Windows）
│       ├── common.ps1 # 通用 PowerShell 函数库
│       ├── check-prerequisites.ps1 # 检查系统前置依赖
│       ├── setup-plan.ps1 # 初始化项目的 SDD 计划结构
│       ├── create-new-feature.ps1 # 创建新功能的 SDD 工件骨架
│       └── update-agent-context.ps1 # 更新 AI Agent 上下文文件
│
├── src/ # Python 源代码
│   └── specify_cli/ # specify-cli 包
│       ├── __init__.py # CLI 入口点，定义 Typer 应用和所有子命令
│       └── extensions.py # 扩展系统实现，负责加载、安装、更新扩展
│
├── tests/ # 测试代码
│   ├── __init__.py # 测试包初始化
│   └── test_extensions.py # 扩展系统单元测试
│
├── media/ # 媒体资源
│   ├── bootstrap-claude-code.gif # Claude Code 引导流程演示动图
│   ├── specify_cli.gif # CLI 使用演示动图
│   ├── logo_large.webp # 项目 Logo（大）
│   ├── logo_small.webp # 项目 Logo（小）
│   └── spec-kit-video-header.jpg # 视频封面图
│
├── .devcontainer/ # VS Code Dev Container 配置
│   ├── devcontainer.json # 容器环境定义
│   └── post-create.sh # 容器创建后执行的初始化脚本
│
└── .github/ # GitHub 配置
    ├── CODEOWNERS # 代码所有者定义
    └── workflows/ # CI/CD 工作流
        ├── docs.yml # 文档站部署工作流
        ├── lint.yml # 代码和文档 Lint 工作流
        ├── release.yml # 发布工作流
        └── stale.yml # 自动关闭过期 Issue/PR
```

## 核心功能

- **SDD 方法论**: 宪法→规范→计划→任务→实现的完整开发流程
- **CLI 工具**: specify-cli 命令行工具支持自动化工作流
- **模板系统**: 提供规范、计划、任务等标准化模板
- **扩展机制**: 支持自定义命令和工作流扩展
- **AI Agent 集成**: 为 AI 辅助开发设计的命令和上下文管理

## 克隆命令

```bash
cd references
git clone https://github.com/github/spec-kit.git
```

# References 索引

本目录包含 geniusk-plugin 开发的参考资料库（已在 `.gitignore` 中排除，不纳入版本控制）。

```
references/
├── spec-kit/ # GitHub 官方 Spec-Driven Development (SDD) 工具包
│   ├── README.md # 项目主文档，概述 SDD 方法论和快速入门
│   ├── spec-driven.md # SDD 完整方法论：宪法→规范→计划→任务→实现
│   ├── pyproject.toml # Python 项目配置，定义 specify-cli 的依赖和构建
│   ├── CHANGELOG.md # 版本变更日志
│   ├── CODE_OF_CONDUCT.md # 行为准则
│   ├── CONTRIBUTING.md # 贡献指南
│   ├── LICENSE # MIT 开源许可证
│   ├── SECURITY.md # 安全策略
│   ├── SUPPORT.md # 技术支持指南
│   ├── spec-kit.code-workspace # VS Code 工作区配置
│   ├── .markdownlint-cli2.jsonc # Markdown 格式校验配置
│   ├── .gitattributes # Git 属性配置
│   ├── .gitignore # Git 忽略规则
│   │
│   ├── docs/ # 项目文档站
│   │   ├── README.md # 文档站首页
│   │   ├── index.md # DocFX 文档站首页内容
│   │   ├── docfx.json # DocFX 文档生成器配置
│   │   ├── toc.yml # 文档站目录结构定义
│   │   ├── installation.md # 安装指南（pip / pipx）
│   │   ├── quickstart.md # 快速入门教程
│   │   ├── local-development.md # 本地开发环境搭建指南
│   │   └── upgrade.md # 版本升级指南
│   │
│   ├── templates/ # SDD 流程模板集合
│   │   ├── spec-template.md # 功能规范模板，定义 What & Why
│   │   ├── plan-template.md # 技术计划模板，定义 How
│   │   ├── tasks-template.md # 任务清单模板，将计划分解为可执行任务
│   │   ├── constitution-template.md # 项目宪法模板，定义项目原则和约束
│   │   ├── checklist-template.md # 验收检查清单模板
│   │   ├── agent-file-template.md # AI Agent 配置文件模板
│   │   ├── vscode-settings.json # VS Code 推荐设置
│   │   └── commands/ # SDD 命令定义（供 AI Agent 使用）
│   │       ├── specify.md # /speckit.specify — 创建功能规范
│   │       ├── plan.md # /speckit.plan — 生成技术计划
│   │       ├── tasks.md # /speckit.tasks — 分解任务清单
│   │       ├── implement.md # /speckit.implement — 执行实现
│   │       ├── constitution.md # /speckit.constitution — 生成项目宪法
│   │       ├── clarify.md # /speckit.clarify — 澄清规范
│   │       ├── analyze.md # /speckit.analyze — 交叉分析工件
│   │       ├── checklist.md # /speckit.checklist — 生成检查清单
│   │       └── taskstoissues.md # /speckit.taskstoissues — 任务转 GitHub Issues
│   │
│   ├── extensions/ # 扩展系统
│   │   ├── RFC-EXTENSION-SYSTEM.md # 扩展系统 RFC 设计文档
│   │   ├── EXTENSION-API-REFERENCE.md # 扩展 API 参考手册
│   │   ├── EXTENSION-DEVELOPMENT-GUIDE.md # 扩展开发指南
│   │   ├── EXTENSION-PUBLISHING-GUIDE.md # 扩展发布指南
│   │   ├── EXTENSION-USER-GUIDE.md # 扩展用户使用指南
│   │   ├── catalog.json # 扩展目录注册表
│   │   ├── catalog.example.json # 扩展目录示例格式
│   │   └── template/ # 扩展开发模板
│   │       ├── extension.yml # 扩展元数据定义模板
│   │       ├── config-template.yml # 扩展配置模板
│   │       ├── README.md # 扩展 README 模板
│   │       ├── EXAMPLE-README.md # 扩展 README 示例
│   │       ├── CHANGELOG.md # 变更日志模板
│   │       ├── LICENSE # 许可证模板
│   │       └── commands/ # 扩展命令目录（空，在此添加自定义命令）
│   │
│   ├── scripts/ # 构建和设置脚本
│   │   ├── bash/ # Bash 脚本（macOS/Linux）
│   │   │   ├── common.sh # 通用 Shell 函数库，被其他脚本引用
│   │   │   ├── check-prerequisites.sh # 检查系统前置依赖
│   │   │   ├── setup-plan.sh # 初始化项目的 SDD 计划结构
│   │   │   ├── create-new-feature.sh # 创建新功能的 SDD 工件骨架
│   │   │   └── update-agent-context.sh # 更新 AI Agent 上下文文件
│   │   └── powershell/ # PowerShell 脚本（Windows）
│   │       ├── common.ps1 # 通用 PowerShell 函数库
│   │       ├── check-prerequisites.ps1 # 检查系统前置依赖
│   │       ├── setup-plan.ps1 # 初始化项目的 SDD 计划结构
│   │       ├── create-new-feature.ps1 # 创建新功能的 SDD 工件骨架
│   │       └── update-agent-context.ps1 # 更新 AI Agent 上下文文件
│   │
│   ├── src/ # Python 源代码
│   │   └── specify_cli/ # specify-cli 包
│   │       ├── __init__.py # CLI 入口点，定义 Typer 应用和所有子命令
│   │       └── extensions.py # 扩展系统实现，负责加载、安装、更新扩展
│   │
│   ├── tests/ # 测试代码
│   │   ├── __init__.py # 测试包初始化
│   │   └── test_extensions.py # 扩展系统单元测试
│   │
│   ├── media/ # 媒体资源
│   │   ├── bootstrap-claude-code.gif # Claude Code 引导流程演示动图
│   │   ├── specify_cli.gif # CLI 使用演示动图
│   │   ├── logo_large.webp # 项目 Logo（大）
│   │   ├── logo_small.webp # 项目 Logo（小）
│   │   └── spec-kit-video-header.jpg # 视频封面图
│   │
│   ├── .devcontainer/ # VS Code Dev Container 配置
│   │   ├── devcontainer.json # 容器环境定义
│   │   └── post-create.sh # 容器创建后执行的初始化脚本
│   │
│   └── .github/ # GitHub 配置
│       ├── CODEOWNERS # 代码所有者定义
│       └── workflows/ # CI/CD 工作流
│           ├── docs.yml # 文档站部署工作流
│           ├── lint.yml # 代码和文档 Lint 工作流
│           ├── release.yml # 发布工作流
│           └── stale.yml # 自动关闭过期 Issue/PR
│
└── superpowers/ # AI 编码代理技能库和工作流系统
    ├── README.md # 项目主文档，介绍技能系统和安装方式
    ├── RELEASE-NOTES.md # 发布说明
    ├── LICENSE # MIT 开源许可证
    ├── .gitattributes # Git 属性配置
    ├── .gitignore # Git 忽略规则
    │
    ├── .claude-plugin/ # Claude Code 插件元数据
    │   ├── plugin.json # 插件元数据定义
    │   └── marketplace.json # 插件市场发布信息
    │
    ├── commands/ # 用户可调用的斜杠命令
    │   ├── brainstorm.md # /brainstorm — 启动苏格拉底式头脑风暴
    │   ├── write-plan.md # /write-plan — 编写详细实现计划
    │   └── execute-plan.md # /execute-plan — 执行计划并跟踪进度
    │
    ├── agents/ # Agent 角色定义
    │   └── code-reviewer.md # 代码审查 Agent，设定审查标准和反馈格式
    │
    ├── hooks/ # 会话钩子
    │   ├── hooks.json # Claude Code Hooks 配置，定义会话启动时的自动行为
    │   ├── session-start.sh # 会话启动脚本，自动提醒可用技能
    │   └── run-hook.cmd # Windows 下的 Hook 执行入口
    │
    ├── lib/ # 核心库
    │   └── skills-core.js # 技能系统核心库，提供技能发现、加载和跨平台支持
    │
    ├── skills/ # 核心技能库（12 个技能）
    │   ├── brainstorming/ # 苏格拉底式设计精细化
    │   │   └── SKILL.md # 通过持续追问引导设计决策
    │   │
    │   ├── test-driven-development/ # TDD 测试驱动开发
    │   │   ├── SKILL.md # 严格的 RED→GREEN→REFACTOR 循环
    │   │   └── testing-anti-patterns.md # 测试反模式清单，列出常见错误做法
    │   │
    │   ├── systematic-debugging/ # 系统化调试（4 阶段根因追踪）
    │   │   ├── SKILL.md # 4 阶段根因追踪方法论
    │   │   ├── root-cause-tracing.md # 根因追踪详细指南
    │   │   ├── defense-in-depth.md # 纵深防御策略
    │   │   ├── condition-based-waiting.md # 基于条件的等待模式说明
    │   │   ├── condition-based-waiting-example.ts # 条件等待 TypeScript 实现示例
    │   │   ├── find-polluter.sh # 测试污染查找脚本，定位测试间干扰
    │   │   ├── CREATION-LOG.md # 技能创建日志
    │   │   ├── test-academic.md # 技能验证测试场景（学术）
    │   │   ├── test-pressure-1.md # 技能验证测试场景（压力 1）
    │   │   ├── test-pressure-2.md # 技能验证测试场景（压力 2）
    │   │   └── test-pressure-3.md # 技能验证测试场景（压力 3）
    │   │
    │   ├── writing-plans/ # 计划编写
    │   │   └── SKILL.md # 如何写出详细、可执行的实现计划
    │   │
    │   ├── executing-plans/ # 计划执行
    │   │   └── SKILL.md # 批量执行任务并设置检查点
    │   │
    │   ├── subagent-driven-development/ # 子代理驱动开发（核心工作流）
    │   │   ├── SKILL.md # 快速迭代 + 两阶段代码审查
    │   │   ├── spec-reviewer-prompt.md # 规范审查者 Prompt，检查实现是否符合规范
    │   │   ├── implementer-prompt.md # 实现者 Prompt，指导代码实现
    │   │   └── code-quality-reviewer-prompt.md # 代码质量审查者 Prompt
    │   │
    │   ├── dispatching-parallel-agents/ # 并行子代理调度
    │   │   └── SKILL.md # 多任务并行执行策略
    │   │
    │   ├── requesting-code-review/ # 请求代码审查
    │   │   ├── SKILL.md # 提交审查前的准备工作流
    │   │   └── code-reviewer.md # 代码审查者角色定义
    │   │
    │   ├── receiving-code-review/ # 接收代码审查
    │   │   └── SKILL.md # 如何正确响应和处理审查反馈
    │   │
    │   ├── finishing-a-development-branch/ # 完成开发分支
    │   │   └── SKILL.md # 合并/PR 决策工作流
    │   │
    │   ├── using-git-worktrees/ # Git Worktree 使用
    │   │   └── SKILL.md # 平行开发多个分支
    │   │
    │   ├── verification-before-completion/ # 完成前验证
    │   │   └── SKILL.md # 确保交付质量的最终检查
    │   │
    │   ├── using-superpowers/ # Superpowers 使用指南
    │   │   └── SKILL.md # 技能发现和触发机制
    │   │
    │   └── writing-skills/ # 编写新技能
    │       ├── SKILL.md # 技能结构和最佳实践指南
    │       ├── anthropic-best-practices.md # Anthropic 官方 Prompt 最佳实践
    │       ├── persuasion-principles.md # Prompt 说服力原则
    │       ├── graphviz-conventions.dot # Graphviz 绘图约定
    │       ├── render-graphs.js # 图表渲染脚本
    │       ├── testing-skills-with-subagents.md # 使用子代理测试技能的指南
    │       └── examples/ # 技能测试示例
    │           └── CLAUDE_MD_TESTING.md # Claude MD 测试示例
    │
    ├── docs/ # 文档
    │   ├── README.codex.md # Codex 平台安装和使用指南
    │   ├── README.opencode.md # OpenCode 平台安装和使用指南
    │   ├── testing.md # 测试策略和指南
    │   ├── plans/ # 设计和实现计划
    │   │   ├── 2025-11-22-opencode-support-design.md # OpenCode 支持设计方案
    │   │   ├── 2025-11-22-opencode-support-implementation.md # OpenCode 支持实现计划
    │   │   └── 2025-11-28-skills-improvements-from-user-feedback.md # 基于用户反馈的技能改进计划
    │   └── windows/ # Windows 平台文档
    │       └── polyglot-hooks.md # Windows 下的多语言 Hook 解决方案
    │
    ├── .codex/ # Codex 集成
    │   └── INSTALL.md # Codex 安装指南
    │
    ├── .opencode/ # OpenCode 集成
    │   ├── INSTALL.md # OpenCode 安装指南
    │   └── plugins/ # OpenCode 插件
    │       └── superpowers.js # OpenCode 插件入口文件
    │
    ├── .github/ # GitHub 配置
    │   └── FUNDING.yml # 赞助信息
    │
    └── tests/ # 测试套件
        ├── claude-code/ # Claude Code 集成测试
        │   ├── README.md # 测试套件说明
        │   ├── run-skill-tests.sh # 技能测试运行入口
        │   ├── test-helpers.sh # 测试辅助函数库
        │   ├── test-subagent-driven-development.sh # SDD 技能单元测试
        │   ├── test-subagent-driven-development-integration.sh # SDD 技能集成测试
        │   └── analyze-token-usage.py # Token 使用量分析脚本
        │
        ├── opencode/ # OpenCode 平台测试
        │   ├── run-tests.sh # 测试运行入口
        │   ├── setup.sh # 测试环境搭建脚本
        │   ├── test-plugin-loading.sh # 插件加载测试
        │   ├── test-priority.sh # 优先级测试
        │   ├── test-skills-core.sh # 技能核心功能测试
        │   └── test-tools.sh # 工具集成测试
        │
        ├── explicit-skill-requests/ # 显式技能请求测试
        │   └── prompts/ # 测试用 Prompt
        │       ├── action-oriented.txt # 测试场景：面向行动的请求
        │       ├── after-planning-flow.txt # 测试场景：规划流程后的请求
        │       ├── claude-suggested-it.txt # 测试场景：Claude 建议后的请求
        │       ├── i-know-what-sdd-means.txt # 测试场景：用户了解 SDD
        │       ├── mid-conversation-execute-plan.txt # 测试场景：对话中执行计划
        │       ├── please-use-brainstorming.txt # 测试场景：明确请求头脑风暴
        │       ├── skip-formalities.txt # 测试场景：跳过形式化步骤
        │       ├── subagent-driven-development-please.txt # 测试场景：请求 SDD 流程
        │       └── use-systematic-debugging.txt # 测试场景：请求系统化调试
        │
        ├── skill-triggering/ # 技能自动触发测试
        │   └── prompts/ # 测试用 Prompt
        │       ├── dispatching-parallel-agents.txt # 触发测试：并行代理调度
        │       ├── executing-plans.txt # 触发测试：计划执行
        │       ├── requesting-code-review.txt # 触发测试：代码审查请求
        │       ├── systematic-debugging.txt # 触发测试：系统化调试
        │       ├── test-driven-development.txt # 触发测试：TDD 流程
        │       └── writing-plans.txt # 触发测试：计划编写
        │
        └── subagent-driven-dev/ # 子代理驱动开发端到端测试
            ├── run-test.sh # SDD 端到端测试入口
            ├── go-fractals/ # Go Fractals 示例项目
            │   ├── design.md # 示例设计文档
            │   ├── plan.md # 示例实现计划
            │   └── scaffold.sh # 项目脚手架脚本
            └── svelte-todo/ # Svelte Todo 示例项目
                ├── design.md # 示例设计文档
                ├── plan.md # 示例实现计划
                └── scaffold.sh # 项目脚手架脚本

├── pypict-claude-skill/ # PICT 组合测试用例设计工具
│   ├── SKILL.md # 核心技能定义：PICT 测试设计工作流
│   ├── README.md # 项目主文档，介绍 PICT 和使用方式
│   ├── QUICKSTART.md # 快速入门指南
│   ├── STRUCTURE.md # 项目结构说明
│   ├── CONTRIBUTING.md # 贡献指南
│   ├── PUBLISHING.md # 发布指南
│   ├── CHANGELOG.md # 版本变更日志
│   ├── LICENSE # MIT 开源许可证
│   ├── .claude-plugin/ # Claude Code 插件元数据
│   │   └── plugin.json # 插件元数据定义
│   ├── scripts/ # 辅助脚本
│   │   └── pict_helper.py # PICT 模型生成和输出格式化工具
│   ├── references/ # PICT 参考资料
│   │   ├── pict_syntax.md # PICT 完整语法参考
│   │   └── examples.md # 各领域实战示例集
│   └── examples/ # 使用示例
│       ├── login_form/ # 登录表单测试示例
│       ├── api_endpoint/ # API 端点测试示例
│       ├── ecommerce_checkout/ # 电商结账测试示例
│       ├── file_upload/ # 文件上传测试示例
│       └── user_registration/ # 用户注册测试示例
│
└── claude-code-infrastructure-showcase/ # Claude Code 基础设施展示仓库
    ├── README.md # 项目主文档，包含 6 个月生产环境经验总结
    ├── CLAUDE_INTEGRATION_GUIDE.md # Claude 集成指南，AI 辅助设置的分步说明
    │
    ├── .claude/ # Claude Code 基础设施
    │   ├── skills/ # 5 个生产级技能
    │   │   ├── backend-dev-guidelines/ # Node.js/Express/TypeScript 模式(12 个资源文件)
    │   │   ├── frontend-dev-guidelines/ # React/TypeScript/MUI v7 模式(11 个资源文件)
    │   │   ├── skill-developer/ # 创建技能的元技能(7 个资源文件)
    │   │   ├── route-tester/ # 测试认证 API 路由
    │   │   ├── error-tracking/ # Sentry 集成模式
    │   │   └── skill-rules.json # 技能自动激活配置
    │   │
    │   ├── hooks/ # 6 个自动化钩子
    │   │   ├── skill-activation-prompt.sh # 【必备】基于提示词自动建议相关技能
    │   │   ├── skill-activation-prompt.ts # 【必备】技能激活 TypeScript 实现
    │   │   ├── post-tool-use-tracker.sh # 【必备】跟踪文件更改以维护上下文
    │   │   ├── tsc-check.sh # 【可选】TypeScript 编译检查(需定制化)
    │   │   ├── trigger-build-resolver.sh # 【可选】编译失败时自动启动错误修复代理
    │   │   ├── error-handling-reminder.sh # 【可选】错误处理提醒
    │   │   └── stop-build-check-enhanced.sh # 【可选】增强的停止时构建检查
    │   │
    │   ├── agents/ # 10 个专用代理
    │   │   ├── code-architecture-reviewer.md # 代码架构审查
    │   │   ├── code-refactor-master.md # 代码重构规划与执行
    │   │   ├── documentation-architect.md # 生成全面的文档
    │   │   ├── frontend-error-fixer.md # 前端错误调试
    │   │   ├── plan-reviewer.md # 审查开发计划
    │   │   ├── refactor-planner.md # 创建重构策略
    │   │   ├── web-research-specialist.md # 在线技术问题研究
    │   │   ├── auth-route-tester.md # 测试认证端点
    │   │   ├── auth-route-debugger.md # 调试认证问题
    │   │   └── auto-error-resolver.md # 自动修复 TypeScript 错误
    │   │
    │   └── commands/ # 3 个斜杠命令
    │       ├── dev-docs.md # 创建结构化开发文档
    │       ├── dev-docs-update.md # 在上下文重置前更新文档
    │       └── route-research-for-testing.md # 研究路由模式以进行测试
    │
    └── dev/ # 开发文档模式示例
        └── active/ # 活跃开发文档目录
            └── public-infrastructure-repo/ # 公共基础设施仓库示例
```

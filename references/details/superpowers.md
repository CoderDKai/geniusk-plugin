# superpowers

**仓库地址**: https://github.com/PriNova/superpowers

**简介**: AI 编码代理技能库和工作流系统

## 目录结构

```
superpowers/
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
```

## 核心功能

- **12 个专业技能**: 涵盖头脑风暴、TDD、调试、计划编写等关键开发环节
- **子代理驱动开发**: 核心工作流，实现快速迭代和两阶段代码审查
- **多平台支持**: 兼容 Claude Code、Codex、OpenCode 等平台
- **测试驱动**: 完整的测试套件和验证场景
- **跨平台 Hooks**: 支持会话启动自动化和技能触发

## 克隆命令

```bash
cd references
git clone https://github.com/PriNova/superpowers.git
```

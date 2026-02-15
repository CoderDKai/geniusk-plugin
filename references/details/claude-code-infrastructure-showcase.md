# claude-code-infrastructure-showcase

**仓库地址**: https://github.com/diet103/claude-code-infrastructure-showcase

**简介**: Claude Code 基础设施展示仓库 - 6 个月生产环境经验总结

## 目录结构

```
claude-code-infrastructure-showcase/
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

## 核心功能

- **技能自动激活**: 通过 hooks 实现技能的智能推荐和自动触发
- **生产级技能**: 5 个经过实战检验的技能，涵盖前后端开发
- **模块化设计**: 遵循 500 行规则，采用渐进式披露模式
- **专用代理**: 10 个针对特定任务优化的 AI 代理
- **Hooks 系统**: 6 个钩子实现自动化工作流
- **开发文档模式**: 三文件结构应对上下文重置

## 核心亮点

1. **自动激活突破**: 解决了"技能不会主动激活"的核心问题
2. **实战经验**: 从 6 个微服务、50,000+ 行代码中提炼
3. **即插即用**: 15-30 分钟完成集成
4. **skill-rules.json**: 配置驱动的技能触发系统

## 克隆命令

```bash
cd references
git clone https://github.com/diet103/claude-code-infrastructure-showcase.git
```

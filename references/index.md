# References 索引

本目录包含 geniusk-plugin 开发的参考资料库（已在 `.gitignore` 中排除，不纳入版本控制）。

## 📚 参考仓库列表

### 1. spec-kit
**仓库地址**: https://github.com/github/spec-kit
**简介**: GitHub 官方 Spec-Driven Development (SDD) 工具包
**详细文档**: [details/spec-kit.md](details/spec-kit.md)

**核心功能**:
- SDD 方法论：宪法→规范→计划→任务→实现
- specify-cli 命令行工具
- 完整的模板系统和扩展机制
- AI Agent 集成支持

---

### 2. superpowers
**仓库地址**: https://github.com/PriNova/superpowers
**简介**: AI 编码代理技能库和工作流系统
**详细文档**: [details/superpowers.md](details/superpowers.md)

**核心功能**:
- 12 个专业开发技能
- 子代理驱动开发工作流
- 多平台支持 (Claude Code, Codex, OpenCode)
- 完整测试套件和 Hooks 系统

---

### 3. pypict-claude-skill
**仓库地址**: https://github.com/benmiz/pypict-claude-skill
**简介**: PICT 组合测试用例设计工具 - Claude Code 技能插件
**详细文档**: [details/pypict-claude-skill.md](details/pypict-claude-skill.md)

**核心功能**:
- Microsoft PICT 工具集成
- 自动生成组合测试用例
- 多领域实战示例
- Python 辅助工具支持

---

### 4. claude-code-infrastructure-showcase
**仓库地址**: https://github.com/diet103/claude-code-infrastructure-showcase
**简介**: Claude Code 基础设施展示仓库 - 6 个月生产环境经验总结
**详细文档**: [details/claude-code-infrastructure-showcase.md](details/claude-code-infrastructure-showcase.md)

**核心功能**:
- 技能自动激活系统
- 5 个生产级技能 + 10 个专用代理
- skill-rules.json 配置驱动
- 开发文档模式和 Hooks 系统

---

## 🚀 快速开始

### 克隆所有仓库

```bash
# 在 references 目录下执行
./clone-all.sh
```

### 克隆单个仓库

```bash
cd references

# spec-kit
git clone https://github.com/github/spec-kit.git

# superpowers
git clone https://github.com/PriNova/superpowers.git

# pypict-claude-skill
git clone https://github.com/benmiz/pypict-claude-skill.git

# claude-code-infrastructure-showcase
git clone https://github.com/diet103/claude-code-infrastructure-showcase.git
```

---

## 📁 目录结构

```
references/
├── index.md                           # 本文件：参考资料总索引
├── details/                           # 详细文档目录
│   ├── spec-kit.md                   # spec-kit 详细结构
│   ├── superpowers.md                # superpowers 详细结构
│   ├── pypict-claude-skill.md        # pypict 详细结构
│   └── claude-code-infrastructure-showcase.md  # infrastructure 详细结构
├── repos/                             # 仓库存放目录（被 .gitignore 忽略）
│   ├── spec-kit/                     # [仓库] GitHub SDD 工具包
│   ├── superpowers/                  # [仓库] AI 技能库
│   ├── pypict-claude-skill/          # [仓库] PICT 测试工具
│   └── claude-code-infrastructure-showcase/  # [仓库] Claude 基础设施展示
├── clone-all.sh                       # 一键克隆所有仓库的脚本
├── CONTRIBUTING.md                    # 添加新参考仓库的指南
├── AGENTS.md                          # Agent 配置文档
├── CLAUDE.md -> AGENTS.md             # Agent 配置符号链接
└── mcp-tools-guide.md                 # MCP 工具使用指南
```

---

## 📖 使用说明

1. **查看概览**: 本文件提供所有参考仓库的快速概览和仓库地址
2. **详细了解**: 点击各仓库的"详细文档"链接查看完整目录结构和功能说明
3. **克隆仓库**: 使用提供的克隆命令或 `clone-all.sh` 脚本获取仓库内容
4. **保持更新**: 定期执行 `git pull` 更新各参考仓库

---

## ⚠️ 注意事项

- 所有参考仓库已在 `.gitignore` 中配置,不会被提交到 geniusk-plugin 仓库
- 克隆后的仓库仅供本地参考,请勿直接修改
- 如需使用某个工具或技能,建议先阅读其详细文档了解使用方法
- 定期更新参考仓库以获取最新功能和修复

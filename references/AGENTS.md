# References

本目录存放 geniusk-plugin 开发过程中的外部参考资料（已通过 `.gitignore` 排除版本控制）。

## 内容概览

- `spec-kit/` — GitHub 官方 Spec-Driven Development 工具包，提供从规范定义到代码实现的完整 SDD 流程（宪法→规范→计划→任务→实现），包含 CLI 工具、模板、扩展系统和命令定义。
- `superpowers/` — AI 编码代理技能库，提供 12 个核心开发技能（TDD、系统化调试、子代理驱动开发、代码审查、计划编写与执行等），以 SKILL.md 为单位组织，支持 Claude Code / Codex / OpenCode 多平台。
- `pypict-claude-skill/` — 基于 PICT（Pairwise Independent Combinatorial Testing）的测试用例设计工具，通过组合测试算法从需求中提取参数并生成最小但覆盖最全的测试场景集，支持约束定义、等价类划分和边界值分析。
- `index.md` — 完整的文件索引，以树形结构列出每个文件及其用途说明。

## 使用指引

- 这些是只读参考材料，不要直接修改其中的文件。
- 需要查找具体文件时，先阅读 `index.md` 定位目标。
- 需要了解 SDD 流程时，优先阅读 `spec-kit/spec-driven.md` 和 `spec-kit/templates/commands/` 下的命令定义。
- 需要了解技能工作流时，优先阅读 `superpowers/skills/` 下对应技能的 `SKILL.md`。

# geniusk-plugin

这是一个自定义的 Claude Code 插件，集成了 Context7 和 Exa MCP 服务器，提供最新技术文档查询和 Web 搜索能力。

## 功能特性

### MCP 工具集成

- **Context7**: 查询最新的开源项目文档和代码示例
- **Exa**: Web 搜索、代码搜索和公司研究

### 技能 (Skills)

- `/technical-design` - 技术方案设计（集成 Context7/Exa 查询最新技术栈）
- `/case-design` - 测试用例设计（使用 PICT 组合测试 + MCP 补充最新测试标准）
- `/plan` - 项目规划
- `/implement` - 功能实现
- `/code-review` - 代码审查
- `/debug` - 问题调试
- `/brainstorming` - 头脑风暴

各技能配置了对应的专用代理，提供针对性的能力支持。

## 前置要求

在使用此插件前，需要确保已安装并配置以下 MCP 服务器：

- **Context7 MCP Server**: 用于查询技术文档
- **Exa MCP Server**: 用于 Web 搜索和代码搜索

请参考官方文档完成 MCP 服务器的安装和配置。

## 安装

将此插件复制到 Claude Code 的插件目录：

```bash
cp -r geniusk-plugin ~/.claude/plugins/
```

## 快速开始

安装插件后，可以在 Claude Code 中使用技能：

```bash
# 技术设计（会自动查询最新技术文档）
/technical-design

# 测试用例设计（会查询最新测试标准）
/case-design

# 项目规划
/plan

# 功能实现
/implement

# 代码审查
/code-review

# 问题调试
/debug

# 头脑风暴
/brainstorming
```

## MCP 工具使用

插件已集成 Context7 和 Exa MCP 工具，在技能执行过程中会自动使用：

### Context7 - 技术文档查询

- 查询最新框架/库文档
- 获取 API 使用示例
- 了解版本更新内容

### Exa - Web 搜索

- 搜索技术趋势和对比
- 查找代码示例和教程
- 研究公司和产品

详细使用方法请参考：[MCP 工具使用指南](references/mcp-tools-guide.md)

## 项目结构

```
geniusk-plugin/
├── .claude-plugin/
│   └── plugin.json       # 插件清单文件（包含 MCP 配置）
├── skills/              # 技能目录
│   ├── technical-design/ # 技术设计（集成 MCP 工具）
│   ├── case-design/     # 用例设计（集成 MCP 工具）
│   ├── plan/            # 项目规划
│   ├── implement/       # 功能实现
│   ├── code-review/     # 代码审查
│   ├── debug/           # 问题调试
│   └── brainstorming/   # 头脑风暴
├── agents/              # 代理目录
├── commands/            # 命令目录
├── hooks/               # 钩子目录
├── references/          # 参考文档
│   └── mcp-tools-guide.md  # MCP 工具使用指南
└── README.md
```

## 自定义扩展

您可以根据需要修改和扩展此插件：

### 添加新技能

在 `skills/` 目录中创建新目录和 `SKILL.md` 文件：

```
skills/
└── my-skill/
    └── SKILL.md
```

### 配置专用代理

在 `agents/` 目录中为技能配置专用代理，提供针对性的能力支持。

### 使用 MCP 工具

在技能中可以调用 Context7 和 Exa 工具。以下是工具调用示例：

**Context7 查询文档：**

1. 首先解析库 ID：
   - 工具：`mcp__context7__resolve-library-id`
   - 参数：`libraryName` (库名称), `query` (查询问题)

2. 然后查询文档：
   - 工具：`mcp__context7__query-docs`
   - 参数：`libraryId` (库 ID), `query` (具体问题)

**Exa 搜索：**

- Web 搜索：`mcp__exa__web_search_exa`
- 代码搜索：`mcp__exa__get_code_context_exa`
- 公司研究：`mcp__exa__company_research_exa`

### 配置钩子

在 `hooks/hooks.json` 中设置事件钩子，在特定时机触发自定义行为。

## 文档

更多信息请参考 [Claude Code 官方文档](https://code.claude.com/docs/en/plugins.md)

## 许可证

MIT

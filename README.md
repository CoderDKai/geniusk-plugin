# geniusk-plugin

这是一个自定义的 Claude Code 插件。

## 安装

将此插件复制到 Claude Code 的插件目录：

```bash
cp -r geniusk-plugin ~/.claude/plugins/
```

## 结构

```
geniusk-plugin/
├── .claude-plugin/
│   └── plugin.json       # 插件清单文件
├── skills/              # 技能目录
│   └── hello/
│       └── SKILL.md
├── commands/            # 命令目录
│   └── example.md
├── agents/              # 代理目录
│   └── example-agent.md
├── hooks/               # 钩子目录
│   └── hooks.json
├── scripts/             # 脚本目录
└── README.md
```

## 功能

### 技能 (Skills)
- `/hello` - 示例问候技能

### 命令 (Commands)
- 示例命令功能

### 代理 (Agents)
- example-agent - 示例自定义代理

### 钩子 (Hooks)
- PostToolUse 钩子示例

## 使用

安装插件后，可以在 Claude Code 中使用 `/hello` 等命令来调用插件功能。

## 自定义

您可以根据需要修改和扩展此插件：
1. 在 `skills/` 中添加新的技能
2. 在 `commands/` 中添加新的命令
3. 在 `agents/` 中定义自定义代理
4. 在 `hooks/` 中配置事件钩子

## 文档

更多信息请参考 [Claude Code 官方文档](https://code.claude.com/docs/en/plugins.md)

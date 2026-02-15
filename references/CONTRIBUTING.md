# References 贡献指南

本指南说明如何向 `references/` 目录添加新的参考仓库。

## 📋 添加新仓库的步骤

### 1. 克隆仓库到 references 目录

```bash
cd /root/AI/plugins/geniusk-plugin/references/repos
git clone <仓库URL> <仓库名称>
```

**示例**:
```bash
git clone https://github.com/example/awesome-tool.git awesome-tool
```

### 2. 创建详细文档

在 `references/details/` 目录下创建一个新的 Markdown 文件，文件名与仓库名称对应。

**文件路径**: `references/details/<仓库名称>.md`

**模板内容**:

```markdown
# <仓库名称>

**仓库地址**: <GitHub 仓库 URL>

**简介**: <一句话简介>

## 目录结构

\`\`\`
<仓库名称>/
├── README.md # 项目主文档
├── ... # 其他主要文件
│
├── <主要目录1>/ # 目录说明
│   ├── file1.ext # 文件说明
│   └── file2.ext # 文件说明
│
└── <主要目录2>/ # 目录说明
    └── ...
\`\`\`

## 核心功能

- **功能1**: 功能描述
- **功能2**: 功能描述
- **功能3**: 功能描述

## 核心亮点（可选）

1. **亮点1**: 详细说明
2. **亮点2**: 详细说明

## 克隆命令

\`\`\`bash
cd references
git clone <仓库URL>
\`\`\`
```

### 3. 更新主索引文件

编辑 `references/index.md`，在"参考仓库列表"部分添加新条目。

**添加位置**: 按编号顺序添加到列表末尾

**格式**:

```markdown
### <编号>. <仓库名称>
**仓库地址**: <GitHub 仓库 URL>
**简介**: <一句话简介>
**详细文档**: [details/<仓库名称>.md](details/<仓库名称>.md)

**核心功能**:
- 功能点1
- 功能点2
- 功能点3
- 功能点4

---
```

### 4. 更新克隆脚本

编辑 `references/clone-all.sh`，在 `REPOS` 数组中添加新仓库。

**添加位置**: 数组末尾

**格式**:

```bash
REPOS=(
    "现有仓库1|URL1"
    "现有仓库2|URL2"
    "新仓库名称|新仓库URL"  # 添加这一行
)
```

**示例**:

```bash
REPOS=(
    "spec-kit|https://github.com/github/spec-kit.git"
    "superpowers|https://github.com/PriNova/superpowers.git"
    "pypict-claude-skill|https://github.com/benmiz/pypict-claude-skill.git"
    "claude-code-infrastructure-showcase|https://github.com/diet103/claude-code-infrastructure-showcase.git"
    "awesome-tool|https://github.com/example/awesome-tool.git"  # 新添加
)
```

### 5. 提交更改

```bash
git add references/
git commit -m "docs: 添加 <仓库名称> 到参考资料索引

- 克隆仓库到 references/repos 目录
- 创建详细文档 details/<仓库名称>.md
- 更新主索引 index.md
- 更新克隆脚本 clone-all.sh
"
```

## 📝 详细文档编写指南

### 目录结构部分

- 使用树形结构展示仓库的主要目录和文件
- 为每个重要文件/目录添加中文注释
- 只展示 2-3 层深度，重点突出核心内容
- 使用注释说明文件用途，而非简单翻译文件名

**好的示例**:
```
awesome-tool/
├── README.md # 项目主文档，包含快速开始指南
├── src/ # 源代码目录
│   ├── core/ # 核心功能模块
│   └── utils/ # 工具函数库
└── docs/ # 文档目录
    ├── guide.md # 使用指南
    └── api.md # API 参考手册
```

**不好的示例**:
```
awesome-tool/
├── README.md # README
├── src/ # 源码
│   ├── index.js
│   ├── config.js
│   ├── utils.js
│   └── ...各种文件
```

### 核心功能部分

- 列出 3-6 个核心功能点
- 使用加粗强调功能名称
- 简明扼要说明功能价值
- 突出技术特色和创新点

### 核心亮点部分（可选）

- 如果仓库有独特的价值主张，添加此部分
- 1-4 个亮点，每个亮点包含标题和详细说明
- 重点说明"为什么选择这个工具"而非"这个工具是什么"

## ✅ 检查清单

在提交前，请确认以下事项:

- [ ] 仓库已成功克隆到 `references/repos/` 目录
- [ ] 已创建 `references/details/<仓库名称>.md` 详细文档
- [ ] 详细文档包含完整的目录结构和核心功能说明
- [ ] 已更新 `references/index.md` 主索引
- [ ] 已更新 `references/clone-all.sh` 克隆脚本
- [ ] 编号和格式与现有条目保持一致
- [ ] 所有 Markdown 链接正确无误
- [ ] 仓库 URL 准确无误
- [ ] 已测试克隆脚本能正常运行

## 🧪 测试

提交前，建议执行以下测试:

### 测试克隆脚本

```bash
cd references
./clone-all.sh
```

确认:
- 新仓库能正确克隆（如果尚未存在）
- 已存在的仓库会被跳过
- 统计信息正确显示

### 测试 Markdown 链接

```bash
# 检查详细文档链接是否存在
ls -l references/details/<仓库名称>.md
```

## 💡 最佳实践

### 1. 仓库选择标准

只添加符合以下标准的参考仓库:

- ✅ 与 geniusk-plugin 开发相关
- ✅ 有明确的文档和使用说明
- ✅ 活跃维护或有稳定版本
- ✅ 开源且可自由使用
- ✅ 提供实际价值和参考意义

### 2. 文档质量

- 保持一致的格式和风格
- 中文描述准确专业
- 专有名词保持英文原文
- 链接和路径准确无误

### 3. 目录结构说明

- 优先说明"做什么"而非"是什么"
- 突出关键文件和核心目录
- 避免过度细节，保持可读性

### 4. 提交信息

- 遵循 Conventional Commits 规范
- 使用中文描述，专有名词保持英文
- 提交信息清晰说明添加的仓库和主要更改

## 📚 示例参考

查看现有的参考仓库文档作为示例:

- [spec-kit.md](details/spec-kit.md) - 完整的目录结构示例
- [superpowers.md](details/superpowers.md) - 核心功能描述示例
- [claude-code-infrastructure-showcase.md](details/claude-code-infrastructure-showcase.md) - 核心亮点部分示例

## ❓ 常见问题

### Q1: 如何处理已经存在的仓库？

如果仓库已经克隆，只需创建/更新文档，无需重新克隆。克隆脚本会自动跳过已存在的仓库。

### Q2: 详细文档应该写多详细？

目标是提供足够的信息帮助用户:
1. 理解仓库的核心价值
2. 快速定位到感兴趣的内容
3. 了解如何获取和使用

不需要复制整个 README，重点是结构化索引。

### Q3: 如果仓库结构很复杂怎么办？

分层展示，主文档展示 2-3 层核心目录，详细信息在各子目录的文档中说明。参考 spec-kit 和 superpowers 的处理方式。

### Q4: 需要翻译仓库的原始文档吗？

不需要。我们创建的是索引和导航文档，不是翻译文档。保持简洁，指引用户到原始文档。

---

**最后更新**: 2026-02-15
**维护者**: geniusk-plugin 团队

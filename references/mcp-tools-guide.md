# MCP 工具使用指南

本 plugin 集成了 Context7 和 Exa MCP 服务器,提供最新技术文档查询和 Web 搜索能力。

## Context7 - 技术文档查询

Context7 提供最新的开源项目文档和代码示例。

### 可用工具

#### 1. resolve-library-id
将包名解析为 Context7 兼容的库 ID。

```typescript
// 调用示例
mcp__context7__resolve-library-id({
  libraryName: "react",
  query: "用户想了解 React hooks 的使用"
})
```

**重要**: 在调用 `query-docs` 之前必须先调用此工具获取库 ID,除非用户提供了 `/org/project` 格式的 ID。

#### 2. query-docs
查询特定库的文档和代码示例。

```typescript
// 调用示例
mcp__context7__query-docs({
  libraryId: "/facebook/react",
  query: "如何使用 useEffect hook 进行副作用管理"
})
```

### 使用场景

- **技术选型**: 查询最新框架版本和最佳实践
- **API 文档**: 获取最新的 API 使用方法
- **代码示例**: 查找特定功能的实现示例
- **版本对比**: 查询不同版本的差异

### 调用策略

**合理规划查询**:
- 根据技术选型需求,查询所有需要对比的技术栈
- 优先查询核心技术,次要依赖可以通过 Exa 补充
- 相关查询可以合并(如"React 18 vs React 19 差异")

**安全要求**:
- 查询中不要包含敏感信息(API key、密码等)

## Exa - Web 搜索和研究

Exa 提供智能 Web 搜索、代码搜索和公司研究能力。

### 可用工具

#### 1. web_search_exa
通用 Web 搜索,获取最新信息。

```typescript
// 调用示例
mcp__exa__web_search_exa({
  query: "Next.js 15 新特性",
  numResults: 8,  // 默认 8
  type: "auto",   // 'auto' 或 'fast'
  contextMaxCharacters: 10000,  // 默认 10000
  livecrawl: "fallback"  // 'fallback' 或 'preferred'
})
```

**使用场景**:
- 查询最新技术趋势
- 了解框架/库的最新动态
- 搜索技术博客和教程

#### 2. get_code_context_exa
搜索代码示例、文档和编程解决方案。

```typescript
// 调用示例
mcp__exa__get_code_context_exa({
  query: "React useState hook 示例",
  tokensNum: 5000  // 1000-50000,默认 5000
})
```

**使用场景**:
- 查找 API 使用示例
- 搜索库文档
- 获取代码片段
- 调试帮助

**来源**: GitHub, Stack Overflow, 官方文档

#### 3. company_research_exa
研究公司和组织信息。

```typescript
// 调用示例
mcp__exa__company_research_exa({
  companyName: "Anthropic",
  numResults: 3  // 默认 3
})
```

**使用场景**:
- 了解公司产品和服务
- 查询公司最新动态
- 行业定位分析

## 在技能中集成 MCP 工具

### 示例 1: technical-design 中的技术选型

```markdown
### 第二步:技术选型(交互阶段)

1. 从 PRD 中提取技术需求
2. **使用 Context7 查询候选技术栈的最新文档**:
   - 调用 resolve-library-id 获取库 ID
   - 调用 query-docs 查询最新版本特性和最佳实践
3. **使用 Exa 搜索技术对比和社区评价**:
   - 使用 web_search_exa 查询技术对比文章
   - 使用 get_code_context_exa 查找使用示例
4. 提出 2-3 种方案并给出推荐
5. 用户选择或自定义技术栈
```

### 示例 2: case-design 中的测试场景补充

```markdown
### 第三步:生成其他维度场景

1. 使用 PICT 生成参数组合
2. **使用 Context7 查询测试最佳实践**:
   - 查询相关测试框架的最新文档
   - 获取常见测试场景示例
3. 对照本地 checklist 生成场景
4. **使用 Exa 搜索行业测试标准**:
   - 搜索安全性测试标准
   - 查询性能测试基准
```

## 最佳实践

### 1. 优先使用 Context7 获取技术文档
- 文档更结构化、更准确
- 直接来自官方源码和文档
- 适合 API 查询和代码示例

### 2. 使用 Exa 补充社区观点
- 查询技术对比和评测
- 了解社区最佳实践
- 获取实战经验分享

### 3. 组合使用提高准确性
```typescript
// 先用 Context7 获取官方文档
const docs = await query-docs({
  libraryId: "/vercel/next.js",
  query: "App Router 使用方法"
});

// 再用 Exa 搜索社区实践
const articles = await web_search_exa({
  query: "Next.js App Router 最佳实践 2026"
});
```

### 4. 多技术对比场景
当需要对比多个技术栈时：
```typescript
// 场景：对比 React、Vue、Svelte、Solid 四个框架
// 可以全部查询 Context7 获取最新文档
for (const framework of ["react", "vue", "svelte", "solid"]) {
  const id = await resolve-library-id({
    libraryName: framework,
    query: "性能和开发体验对比"
  });
  const docs = await query-docs({
    libraryId: id,
    query: "最新版本特性、性能指标、生态系统"
  });
}

// 再用 Exa 搜索综合对比
const comparison = await web_search_exa({
  query: "React vs Vue vs Svelte vs Solid 2026 对比"
});
```

### 5. 保护敏感信息
- 查询参数不包含 API key
- 不泄露内部代码逻辑
- 避免提交敏感业务信息

## 错误处理

```typescript
// 如果 Context7 未找到库
if (!libraryId) {
  // 降级到 Exa 搜索
  const codeExamples = await get_code_context_exa({
    query: "libraryName 使用文档"
  });
}

// 如果某个技术查询失败
// 可以继续查询其他候选技术
// 并在结果中说明哪些技术完成了调研
```

## 更新日志

- 2026-02-15: 初始版本,集成 Context7 和 Exa

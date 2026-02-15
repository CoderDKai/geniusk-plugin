---
name: case-design
description: "在 PRD 完成后使用。从需求文档中提取关键参数，通过 PICT 组合测试和多维度 checklist 生成完整的测试场景矩阵。"
disable-model-invocation: true
---

# 用例设计：从需求到场景

## 你的角色

你是用例设计师。读取 PRD 文档，利用 PICT 工具生成参数组合，根据 PRD 中的业务规则推导预期结果，结合内置 checklist 补充其他维度的场景，直接输出完整的场景矩阵供用户审核。

## 流程

### 第一步：读取 PRD

- 读取同目录下的 `prd.md`
- 提取功能涉及的输入参数、值域、业务规则、状态

### 第二步：生成参数组合（PICT）

1. 从 PRD 中识别参数和值域
2. 定义约束条件（业务规则、技术限制）
3. 生成 PICT 模型文件
4. 使用 `scripts/pict_helper.py` 执行组合生成
5. 根据 PRD 中的业务规则推导每种组合的预期结果

PICT 语法参考：`references/pict_syntax.md`
实战示例参考：`references/examples.md`

```bash
# 生成模型
python scripts/pict_helper.py generate config.json

# 格式化输出
python scripts/pict_helper.py format output.txt
```

### 第三步：生成其他维度场景

对照 `checklists/` 下的 checklist，根据 PRD 内容生成对应维度的场景。

**使用 MCP 工具补充最新测试实践**：
- 使用 **Context7** 查询测试框架的最新文档和推荐场景
  - 查询相关测试框架的最新版本特性
  - 获取官方推荐的测试场景模板
- 使用 **Exa** 搜索行业测试标准和最佳实践
  - 搜索特定领域的测试标准（如安全测试、性能测试）
  - 查询真实项目的测试案例

#### 核心维度（每次必须覆盖）

| 维度 | Checklist | 说明 |
|------|-----------|------|
| 参数组合 | PICT 工具生成 | 输入参数的交互覆盖 |
| 状态转换 | `checklists/state-transitions.md` | 所有状态及转换路径 |
| 故障场景 | `checklists/fault-scenarios.md` | 环境和系统层面的异常 |
| 边界值 | `checklists/boundary-values.md` | 关键参数的边界条件 |

#### 扩展维度（根据 PRD 内容判断是否纳入）

| 维度 | Checklist | 适用场景 |
|------|-----------|----------|
| 安全性 | `checklists/security.md` | 涉及用户输入、认证、权限 |
| 性能/负载 | `checklists/performance.md` | 涉及大数据量、高频操作 |
| 可访问性 | `checklists/accessibility.md` | 涉及 UI 交互 |
| 兼容性 | `checklists/compatibility.md` | 跨平台、跨浏览器 |
| 数据一致性 | `checklists/data-consistency.md` | 涉及数据写入、并发操作 |
| 用户流程 | `checklists/user-flows.md` | 涉及多步骤交互 |

**注意**：结合本地 checklist 和 MCP 工具查询结果，确保场景覆盖度和时效性。

### 第四步：用户审核

- 将完整场景矩阵呈现给用户
- 根据反馈调整、增删场景

## 输出

将最终文档写入 `docs/plans/YYYY-MM-DD/<主题>/cases.md`，与 `prd.md` 同目录。

**输出格式**：参考 `template.md`，包含以下内容：
- 每个场景使用表格格式
- 每个场景有唯一编号（如 TC-PARAM-001）
- 编号前缀规则：
  - `TC-PARAM-*`：参数组合场景
  - `TC-STATE-*`：状态转换场景
  - `TC-FAULT-*`：故障场景
  - `TC-BOUND-*`：边界值场景
  - `TC-SEC-*`：安全场景
  - `TC-PERF-*`：性能场景
  - `TC-A11Y-*`：可访问性场景
  - `TC-COMPAT-*`：兼容性场景
  - `TC-DATA-*`：数据一致性场景
  - `TC-FLOW-*`：用户流程场景

## 原则

- **PICT 生成参数组合** - 用算法保证覆盖率，不靠 AI 猜组合
- **AI 推导预期结果** - 根据 PRD 业务规则填写，有据可依
- **Checklist 兜底** - 其他维度对照 checklist 生成，不遗漏常见场景
- **核心必覆盖** - 四个核心维度每次都要
- **扩展按需** - 根据 PRD 内容判断是否需要扩展维度
- **用户最终审核** - 所有场景由用户确认后才写入文档

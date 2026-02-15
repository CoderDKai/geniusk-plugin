# pypict-claude-skill

**仓库地址**: https://github.com/benmiz/pypict-claude-skill

**简介**: PICT 组合测试用例设计工具 - Claude Code 技能插件

## 目录结构

```
pypict-claude-skill/
├── SKILL.md # 核心技能定义：PICT 测试设计工作流
├── README.md # 项目主文档，介绍 PICT 和使用方式
├── QUICKSTART.md # 快速入门指南
├── STRUCTURE.md # 项目结构说明
├── CONTRIBUTING.md # 贡献指南
├── PUBLISHING.md # 发布指南
├── CHANGELOG.md # 版本变更日志
├── LICENSE # MIT 开源许可证
│
├── .claude-plugin/ # Claude Code 插件元数据
│   └── plugin.json # 插件元数据定义
│
├── scripts/ # 辅助脚本
│   └── pict_helper.py # PICT 模型生成和输出格式化工具
│
├── references/ # PICT 参考资料
│   ├── pict_syntax.md # PICT 完整语法参考
│   └── examples.md # 各领域实战示例集
│
└── examples/ # 使用示例
    ├── login_form/ # 登录表单测试示例
    ├── api_endpoint/ # API 端点测试示例
    ├── ecommerce_checkout/ # 电商结账测试示例
    ├── file_upload/ # 文件上传测试示例
    └── user_registration/ # 用户注册测试示例
```

## 核心功能

- **PICT 集成**: Microsoft PICT (Pairwise Independent Combinatorial Testing) 工具集成
- **测试用例生成**: 自动生成组合测试用例，覆盖参数组合
- **Claude 技能**: 通过 Claude Code 技能接口提供智能测试设计辅助
- **多领域示例**: 提供登录、API、电商等多个实战示例
- **Python 辅助工具**: pict_helper.py 简化模型创建和输出处理

## 克隆命令

```bash
cd references
git clone https://github.com/benmiz/pypict-claude-skill.git
```

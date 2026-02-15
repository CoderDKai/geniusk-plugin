#!/bin/bash

# clone-all.sh - 一键克隆所有参考仓库
# 使用方法: ./clone-all.sh

set -e

# 颜色定义
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  geniusk-plugin 参考仓库克隆工具${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

# 定义仓库列表 (名称|URL)
REPOS=(
    "spec-kit|https://github.com/github/spec-kit.git"
    "superpowers|https://github.com/PriNova/superpowers.git"
    "pypict-claude-skill|https://github.com/benmiz/pypict-claude-skill.git"
    "claude-code-infrastructure-showcase|https://github.com/diet103/claude-code-infrastructure-showcase.git"
)

# 统计变量
TOTAL=${#REPOS[@]}
SUCCESS=0
SKIPPED=0
FAILED=0

# 克隆或更新仓库
for repo_info in "${REPOS[@]}"; do
    IFS='|' read -r name url <<< "$repo_info"

    echo -e "${YELLOW}[$(($SUCCESS + $SKIPPED + $FAILED + 1))/$TOTAL]${NC} 处理仓库: ${GREEN}$name${NC}"

    if [ -d "$SCRIPT_DIR/repos/$name" ]; then
        echo -e "  └─ 仓库已存在，跳过克隆"
        echo -e "  └─ 提示: 如需更新，请执行: ${YELLOW}cd repos/$name && git pull${NC}"
        SKIPPED=$((SKIPPED + 1))
    else
        echo -e "  └─ 正在克隆: $url"
        if git clone "$url" "$SCRIPT_DIR/repos/$name" --quiet; then
            echo -e "  └─ ${GREEN}✓${NC} 克隆成功"
            SUCCESS=$((SUCCESS + 1))
        else
            echo -e "  └─ ${RED}✗${NC} 克隆失败"
            FAILED=$((FAILED + 1))
        fi
    fi
    echo ""
done

# 输出统计信息
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  克隆完成统计${NC}"
echo -e "${GREEN}========================================${NC}"
echo -e "总计: $TOTAL 个仓库"
echo -e "${GREEN}成功: $SUCCESS${NC}"
echo -e "${YELLOW}跳过: $SKIPPED${NC} (已存在)"
if [ $FAILED -gt 0 ]; then
    echo -e "${RED}失败: $FAILED${NC}"
fi
echo ""

if [ $FAILED -eq 0 ]; then
    echo -e "${GREEN}✓ 所有仓库处理完成!${NC}"
    exit 0
else
    echo -e "${RED}✗ 部分仓库克隆失败，请检查网络连接或仓库地址${NC}"
    exit 1
fi

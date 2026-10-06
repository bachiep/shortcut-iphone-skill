#!/usr/bin/env bash
# Cài skill tao_phim_tat_iphone cho agent.
# Cách dùng: ./install.sh [--target DIR]
# Mặc định cài vào ~/.claude/skills/tao-phim-tat-iphone (chuẩn agent skill).
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-$HOME/.claude/skills/tao-phim-tat-iphone}"

if [ -n "${2:-}" ]; then TARGET="$2"; fi
# hỗ trợ ./install.sh --target DIR
if [ "${1:-}" = "--target" ] && [ -n "${2:-}" ]; then TARGET="$2"; fi

mkdir -p "$TARGET"
cp -r "$SRC/SKILL.md" "$SRC/bin" "$SRC/references" "$TARGET/"
echo "Đã cài skill vào: $TARGET"
echo "Agent đọc $TARGET/SKILL.md rồi làm theo quy trình trong đó."

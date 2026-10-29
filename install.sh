#!/bin/bash
# 議事録（基本版）スキルを Claude Code と Codex に入れる
set -e
here="$(cd "$(dirname "$0")" && pwd)"

if ! command -v lark-cli >/dev/null 2>&1; then
  echo "lark-cli が見つかりません。先に lark-cli を入れてログインしてください。"
  exit 1
fi

for dir in "$HOME/.claude/skills" "$HOME/.codex/skills"; do
  parent="$(dirname "$dir")"
  [ -d "$parent" ] || continue
  mkdir -p "$dir"
  if [ -e "$dir/gijiroku-basic" ]; then
    echo "すでに入っています（上書きしません）: $dir/gijiroku-basic"
    echo "  入れ直すときは、そのフォルダを別の場所へ移してから再実行してください。"
    continue
  fi
  cp -R "$here/gijiroku-basic" "$dir/gijiroku-basic"
  echo "入れました: $dir/gijiroku-basic"
done

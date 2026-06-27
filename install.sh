#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
codex_home="${CODEX_HOME:-"$HOME/.codex"}"
destination="${DESTINATION:-"$codex_home/skills/pr-review-sherpa"}"

mkdir -p "$destination/agents"
cp "$repo_root/SKILL.md" "$destination/SKILL.md"
cp "$repo_root/agents/openai.yaml" "$destination/agents/openai.yaml"
echo "已安装 pr-review-sherpa -> $destination"
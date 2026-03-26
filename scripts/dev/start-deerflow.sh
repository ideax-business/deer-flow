#!/usr/bin/env bash
set -e

cd /workspaces/deer-flow
export PATH="$HOME/.local/bin:$PATH"

# 再兜底一次，避免你单独运行脚本时 /tmp 目录不存在
mkdir -p \
  /tmp/nginx/body \
  /tmp/nginx/proxy \
  /tmp/nginx/fastcgi \
  /tmp/nginx/uwsgi \
  /tmp/nginx/scgi

make dev

#!/usr/bin/env bash
set -e

mkdir -p \
  /tmp/nginx/body \
  /tmp/nginx/proxy \
  /tmp/nginx/fastcgi \
  /tmp/nginx/uwsgi \
  /tmp/nginx/scgi

chmod 700 /tmp/nginx /tmp/nginx/body /tmp/nginx/proxy /tmp/nginx/fastcgi /tmp/nginx/uwsgi /tmp/nginx/scgi || true

# 让 uv 永久可用（如果你是用户级安装）
if ! grep -q 'HOME/.local/bin' ~/.bashrc 2>/dev/null; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi

# 给 DeerFlow 启动做一个快捷命令
if ! grep -q 'alias deerup=' ~/.bashrc 2>/dev/null; then
  echo 'alias deerup="bash /workspaces/deer-flow/scripts/dev/start-deerflow.sh"' >> ~/.bashrc
fi

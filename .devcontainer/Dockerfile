FROM mcr.microsoft.com/devcontainers/python:1-3.12-bookworm

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl ca-certificates gnupg make nginx && \
    curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y --no-install-recommends nodejs && \
    npm install -g pnpm && \
    curl -LsSf https://astral.sh/uv/install.sh | sh && \
    ln -s /root/.local/bin/uv /usr/local/bin/uv && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

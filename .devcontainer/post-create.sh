#!/usr/bin/env bash
set -e

corepack enable

if [ ! -f config.yaml ]; then
  make config
fi

make install

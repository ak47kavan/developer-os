#!/bin/bash

mkdir -p data

OS_VERSION=$(sw_vers -productVersion)
KERNEL=$(uname -r)
UPTIME=$(uptime)

BREW_COUNT=0
if command -v brew >/dev/null 2>&1; then
    BREW_COUNT=$(brew list | wc -l)
fi

cat > data/system.json << EOF
{
  "os_version": "$OS_VERSION",
  "kernel": "$KERNEL",
  "uptime": "$UPTIME",
  "brew_packages": "$BREW_COUNT"
}
EOF

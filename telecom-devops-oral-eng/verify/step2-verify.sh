#!/usr/bin/env bash
set -euo pipefail
sudo -u nobody bash -lc "echo test >> /opt/app/logs/_probe" 2>/dev/null && echo "done" || { echo "Permission issue"; exit 1; }

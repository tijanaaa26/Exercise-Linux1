#!/usr/bin/env bash
set -euo pipefail
[[ -s /tmp/sysinfo.txt ]] && echo "done" || { echo "Missing /tmp/sysinfo.txt"; exit 1; }

#!/usr/bin/env bash
set -euo pipefail
[[ -s /tmp/service.log ]] && echo "done" || { echo "No service log"; exit 1; }

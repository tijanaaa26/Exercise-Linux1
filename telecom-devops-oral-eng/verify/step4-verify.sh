#!/usr/bin/env bash
set -euo pipefail
[[ -s /tmp/errors.log ]] && echo "done" || { echo "Missing /tmp/errors.log"; exit 1; }

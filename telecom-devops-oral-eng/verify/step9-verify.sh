#!/usr/bin/env bash
set -euo pipefail
[[ -s /usr/local/bin/check_users.sh ]] && echo "done" || { echo "Missing script"; exit 1; }

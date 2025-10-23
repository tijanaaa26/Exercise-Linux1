#!/usr/bin/env bash
set -euo pipefail
id operator1 >/dev/null 2>&1 && echo "done" || { echo "User not found"; exit 1; }

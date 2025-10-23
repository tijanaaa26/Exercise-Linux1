#!/usr/bin/env bash
set -euo pipefail
grep -q "Hello trainee!" /tmp/http_output.txt && echo "done" || { echo "Missing HTTP output"; exit 1; }

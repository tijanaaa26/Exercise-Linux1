#!/usr/bin/env bash
set -euo pipefail
grep -q "192\.168\.56\.10" /tmp/ip_output.txt && grep -q "192\.168\.56\.1" /tmp/route_output.txt && echo "done" || { echo "Network not set"; exit 1; }

#!/usr/bin/env bash
set -euo pipefail
grep -q "/opt/backup.sh" /tmp/cronjobs.txt && echo "done" || { echo "No cron job"; exit 1; }

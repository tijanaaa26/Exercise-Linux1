#!/usr/bin/env bash
set -euo pipefail
[[ -s /tmp/etc_backup.tar.gz ]] && echo "done" || { echo "Backup missing"; exit 1; }

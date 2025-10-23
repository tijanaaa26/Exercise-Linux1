#!/usr/bin/env bash
set -euo pipefail
apt-get update -y >/dev/null 2>&1 || true
apt-get install -y iproute2 net-tools curl lsof procps acl tar >/dev/null 2>&1 || true

mkdir -p /opt/app/logs
chmod 750 /opt/app/logs

cat >/usr/local/bin/backup.sh <<'EOS'
#!/usr/bin/env bash
set -e
tar -czf /tmp/etc_backup.tar.gz /etc >/dev/null 2>&1 || true
EOS
chmod 644 /usr/local/bin/backup.sh

mkdir -p /etc/systemd/system
cat >/etc/systemd/system/backup-agent.service <<'EOS'
[Service]
ExecStart=/usr/local/bin/backup.s
EOS

touch /tmp/services_enabled.txt /tmp/ip_output.txt /tmp/route_output.txt /tmp/cronjobs.txt /tmp/userstats.txt /tmp/http_output.txt

echo 'Setup complete.'

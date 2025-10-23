# Linux & Telco Practice — Lab files and tasks

This archive contains the sample filesystem and files your trainees will use for the **20 LFCS + Telco tasks**.
Place the archive contents inside a VM or lab container and let trainees inspect and analyse files under the provided paths.

## Included sample tree (relative to root of the lab folder)
- `etc/systemd/journald.conf` — sample journald config
- `etc/rsyslog.conf` — sample rsyslog config
- `var/log/messages` — system log (sample)
- `var/log/ims.log` — IMS application log (sample)
- `opt/ims/conf/settings.ini` — IMS configuration
- `opt/ims/users.ldif` — sample LDIF with users
- `certs/ims_core_cert.pem` — example certificate (placeholder)
- `etc/hosts` — hosts file with ims-core.local entry
- `scripts/check_port.sh` — small helper to check a TCP port
- `backup/` — empty backup destination

## How to use
1. Copy the entire `lfcs_telco_lab` folder into the trainee VM, preserving paths (e.g. `/home/trainee/lfcs_telco_lab`).
2. Ask trainees to `cd` into the folder and analyze files; many tasks will reference paths like `/opt/ims/conf/settings.ini`.
3. You can simulate mountpoints or devices by using loop devices and bind mounts if needed:
   - `sudo mount --bind $(pwd)/opt/ims /opt/ims`
   - `sudo mount --bind $(pwd)/var/log /var/log` (use with caution on shared systems)

## Example task references
- Find `Storage` value in `etc/systemd/journald.conf`.
- Extract UID lines from `opt/ims/users.ldif`.
- Search `var/log/ims.log` for unique IPs and save them to `/tmp/ips.txt`.
- Check LDAPS (port 636) on `10.8.8.9` using `openssl s_client -connect 10.8.8.9:636`.

> **Note:** Files are realistic but simplified for training. Do **not** overwrite your real `/etc` or `/var/log`—use the lab folder or run inside an isolated VM/container.


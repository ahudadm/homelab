# debian-base

Base Debian 12 LXC container running on Proxmox.

## Specs

 - OS: Debian 12 (Bookworm)
 - RAM: 512MB
 - Disk: 8GB
 - Hypervisor: Proxmox VE

## Installed

 - Tailscale (Remote Access)
 - Sudo

## Users

 - ahudadm (sudo user)
 - root SSH disabled

## Notes

 - TUN device enabled in Proxmox for Tailscale
 - See Proxmox/lxc/tailscale-tun-fix.md for details

## Automation

 - Weekly automaticsystem updates via systemd timer
 - Timer: system-update.timer (runs every Monday)
 - Service: system-update.service
 - Logs: /var/log/system-update.log

### Install systemd timer
```bash
cp systemd/system-update.service /etc/systemd/system
cp systemd/system-update.timer /etc/systemd/system
system daemon-reload
systemctl enable --now system-update.timer
```

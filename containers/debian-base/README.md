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

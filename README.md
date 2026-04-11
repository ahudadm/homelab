# Homelab

Personal homelab built on a 2011 Macbook Pro running Proxmox VE.

## Hardware
 - Machine: 2011 Macbook Pro
 - CPU: Intel Core i7
 - RAM: 8GB
 - Storage: Samsung 512GB SSD
 - Hypervisor: Proxmox VE 8.x on Debian 12 Bookworm

## Network
 - Physical Nic: enp2s0f0
 - Bridge: vmbr0
 - Proxmox IP: 192.168.0.50/24
 - Gateway: 192.168.0.1
 - Remote Access: Tailscale

## Containers
| Name | OS | RAM | Purpose |
|------|----|-----|---------|
| debian-01 | Debian 12 | 512MB | Learning/Practice |
| adguard | Debian 12 | 512MB | Network DNS Ad Blocker |

## Structure
 - containers/ - LXC containers configs and scripts
 - proxmox/ - Proxmox configuration and notes
 - scripts/ - automation scripts

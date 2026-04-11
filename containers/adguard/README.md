# AdGuard Home

Network-wide DNS ad blocker running as a Docker container on Debian 12 LXC.

## Specs
- OS: Debian 12 (Bookworm)
- RAM: 512MB
- DISK: 8GB
- IP: 192.168.0.2 (static)


## Ports
| Port | Protocol | Purpose |
|------|----------|---------|
| 53 | TCP/UDP | DNS |
| 80 | TCP | Admin UI |
| 3000 | TCP | Setup Wizard |

## Access
- Admin UI: http://192.168.0.2
- DNS Server: 192.168.0.2

## Docker Run Command
```bash
docker run -d \
  --name adguard \
  --restart unless-stopped \
  -p 53:53/tcp \
  -p 53:53/udp \
  -p 80:80/tcp \
  -p 3000:3000/tcp \
  -v adguard_work:/opt/adguardhome/work \
  -v adguard_conf:/opt/adguardhome/conf \
  adguard/adguardhome:latest
```

## Blocklists
- AdGuard DNS filter (default)
- AdAway Default Blocklist
- HaGeZi's Pro++ Blocklist
- OISD Blocklist Small
- Steven Black's List

## DNS Configuration
Personal Router does not support/Allow  custom DNS settings.
Set DNS manually per device to 192.168.0.2

## Notes
- Tailscale MagicDNS must be disabled on devices using AdGuard
- Browser extensions like uBlock Origin recommended alongside DNS blocking
- YouTube and social media ads cannot be blocked via DNS

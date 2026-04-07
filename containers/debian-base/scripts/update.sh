#!/bin/bash

# System Update Script
# Author: Ahudadm
# Description: Update Packages, Upgrades System, Removes Orphans
# Usage: sudo ./update.sh

# Variables
LOG_FILE="/var/log/system-update.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Log Function
log() {
	echo "[$DATE] $1" | tee -a $LOG_FILE
}

# Start
log "Starting system update..."

# Update package lists
log "Updating package lists..."
apt update -y

# Upgrade packages
log "Upgrading packages..."
apt upgrade -y

# Remove oprhaned packages
log "Removing oprhaned packages..."
apt autoremove -y

# Done
log "System update complete."

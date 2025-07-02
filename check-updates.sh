#!/bin/bash

# Enhanced Package Update Checker
LOGFILE="update_log_$(date +%F).log"

echo "📦 PACKAGE UPDATE REPORT - $(date)" > "$LOGFILE"
echo "----------------------------------------" >> "$LOGFILE"

# Step 1: Update package lists
echo "🔄 Running apt update..." >> "$LOGFILE"
sudo apt update >> "$LOGFILE" 2>&1

# Step 2: Capture upgradable packages
echo -e "\n📋 AVAILABLE UPGRADES:" >> "$LOGFILE"
UPGRADES=$(apt list --upgradable 2>/dev/null | tail -n +2)
echo "$UPGRADES" >> "$LOGFILE"

# Step 3: Count how many packages can be upgraded
UPGRADE_COUNT=$(echo "$UPGRADES" | wc -l)

# Step 4: Alert if too many packages pending
echo -e "\n📊 Packages to be upgraded: $UPGRADE_COUNT" >> "$LOGFILE"

if [ "$UPGRADE_COUNT" -gt 50 ]; then
  echo -e "\n🚨 ALERT: High number of updates available!" >> "$LOGFILE"
  echo "You should run 'sudo apt upgrade' soon." >> "$LOGFILE"
fi

echo -e "\n✅ Update check complete. Log saved to $LOGFILE"


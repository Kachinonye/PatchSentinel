# 📦 Package Tracker for System Updates

This Bash script checks for available system updates using `apt`, logs the details into a file, and raises an alert if too many packages need upgrading.

## 🔍 Features

- Logs output of `apt update` and `apt list --upgradable`
- Highlights when more than 50 updates are pending
- Creates a dated log file (`update_log_YYYY-MM-DD.log`)
- Designed for Debian-based systems (e.g., Kali, Ubuntu)

## 🚀 How to Use

```bash
chmod +x check-updates.sh
./check-updates.sh


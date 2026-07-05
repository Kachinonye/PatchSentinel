# 📦 PatchSentinel — Linux Patch Management & Update Monitoring Tool

**PatchSentinel** is a Bash-based Linux patch management utility that helps administrators monitor system updates, identify pending security patches, and maintain an audit trail of package upgrade activity.

Developed as a practical Linux administration project, PatchSentinel automates update checks, records package information, and alerts administrators when systems require attention.

---

## ✨ Features

* 📦 Checks for available package updates
* 🔍 Executes `apt update` and identifies upgradable packages
* 📝 Generates timestamped update reports
* 🚨 Alerts when pending updates exceed a configurable threshold
* 📊 Tracks package upgrade status over time
* 🐧 Designed for Debian-based Linux distributions including Ubuntu, Debian, and Kali Linux
* ⏰ Suitable for scheduled execution using `cron`

---

## 📂 Project Structure

```text
PatchSentinel/
├── check-updates.sh
├── logs/
└── README.md
```

> **Recommendation:** Consider renaming `check-updates.sh` to `patch-sentinel.sh` or `patchsentinel.sh` to match the repository branding.

---

## 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/Kachinonye/PatchSentinel.git
```

Navigate to the project directory:

```bash
cd PatchSentinel
```

Make the script executable:

```bash
chmod +x check-updates.sh
```

---

## ▶️ Usage

Run the update monitor:

```bash
./check-updates.sh
```

PatchSentinel automatically:

1. Refreshes package information.
2. Lists available upgrades.
3. Creates a timestamped log file.
4. Warns when pending updates exceed the configured threshold.

---

## 📄 Example Output

Generated log file:

```text
update_log_2026-07-05.log
```

Example alert:

```text
⚠ WARNING

52 packages are waiting to be upgraded.

System update recommended.
```

---

## 💼 Skills Demonstrated

This project showcases practical experience with:

* Linux System Administration
* Bash Shell Scripting
* Package Management
* Security Patch Monitoring
* Automation
* Log Management
* Cron Scheduling
* Debian Package Administration
* Technical Documentation

---

## 🎯 Use Cases

PatchSentinel is useful for:

* Linux System Administrators
* DevOps Engineers
* Security Teams
* Home Lab Environments
* Server Maintenance
* Routine Patch Management
* Linux Administration Training

---

## 🔮 Planned Enhancements

Future releases may include:

* Automatic package upgrades
* Email notifications
* HTML update reports
* JSON export
* CVE vulnerability lookups
* Automatic reboot recommendations
* Support for additional package managers (DNF, YUM, Zypper)

---

## 👨‍💻 Author

**Kachinonye Nmezi**

Junior Linux Administrator | Bash Scripting & Automation Specialist

GitHub: https://github.com/Kachinonye

LinkedIn: https://www.linkedin.com/in/kachinonye-nmezi-74170723b/

---

## 📜 License

Licensed under the MIT License.

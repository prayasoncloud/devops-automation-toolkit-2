

## 1. System Health & Monitoring Suite

Provides visibility into system performance and operational status.

### Resource Monitor

* CPU utilization monitoring
* Memory and swap tracking
* Load average reporting
* System uptime statistics

### Disk Usage Monitor

* Filesystem usage analysis
* Disk threshold alerts
* Large directory detection
* Storage growth monitoring

### Network Monitor

* Connectivity verification
* DNS resolution testing
* Latency measurements
* Packet loss detection

### Process Health Monitor

* Process availability checks
* CPU and memory consumption tracking
* Zombie process detection

### Service Watchdog

* Systemd service monitoring
* Automatic service recovery
* Restart history logging

### Memory Leak Detector

* Historical memory tracking
* Process memory trend analysis
* Potential leak detection

---

## 2. Security Audit & Hardening Toolkit

Provides security assessments and compliance checks.

### User Audit Tool

* User inventory
* Login activity review
* Expired account detection

### Group Audit Tool

* Group membership analysis
* Privileged group review

### Sudo Access Auditor

* Sudoers inspection
* NOPASSWD rule detection
* Privilege escalation review

### Failed Login Analyzer

* SSH login failure monitoring
* Brute-force attempt detection
* Attack source reporting

### Open Port Scanner

* Active listening port discovery
* Service-to-port mapping
* Exposure assessment

### File Permission Auditor

* World-writable file detection
* SUID and SGID review
* Sensitive permission validation

### Package Compliance Checker

* Package inventory
* Missing updates detection
* Compliance validation

### Security Hardening Validator

* SSH hardening checks
* Firewall verification
* Password policy assessment
* Root login restrictions

---

## 3. Infrastructure Maintenance Manager

Automates routine maintenance operations.

### Log Cleanup Manager

* Log archival
* Compression
* Retention enforcement
* Storage optimization

### Docker Cleanup Manager

* Remove dangling images
* Remove unused containers
* Remove unused volumes
* Storage reclamation reporting

### Cron Job Auditor

* Scheduled task inventory
* Duplicate cron detection
* Invalid command identification

### Maintenance Report Generator

* Cleanup summaries
* Maintenance statistics
* Resource recovery reports

---

## 4. Backup & Disaster Recovery Framework

Ensures backup reliability and recovery readiness.

### Backup Manager

* File backups
* Directory backups
* Database backups
* Incremental backup support

### Backup Scheduler

* Automated backup execution
* Scheduled backup policies

### Backup Integrity Validator

* Hash verification
* Archive validation
* Corruption detection

### Restore Validator

* Test restoration procedures
* Recovery verification

### Retention Manager

* Backup lifecycle management
* Expired backup cleanup

---

## 5. Web Server Operations Toolkit

Supports web server administration and monitoring.

### SSL Certificate Monitor

* Certificate expiration checks
* Renewal alerts
* Expiry reporting

### SSL Security Auditor

* TLS configuration analysis
* Cipher validation
* Security recommendations

### Nginx Access Log Analyzer

* Traffic analysis
* Top visitor reports
* Response code statistics

### Nginx Error Log Analyzer

* Error detection
* Upstream failure analysis
* Configuration issue reporting

### Traffic & Security Reporter

* Traffic trends
* Suspicious activity detection
* Peak usage analysis

---

# Installation

## Clone Repository

```bash
git clone https://github.com/yourusername/linux-admin-suite.git
cd linux-admin-suite
```

## Create Virtual Environment

```bash
python3 -m venv venv
source venv/bin/activate
```

## Install Dependencies

```bash
pip install -r requirements.txt
```

---

# Usage

Run modules individually:

```bash
python monitor/resource_monitor.py
python security/user_audit.py
python backup/backup_manager.py
```

Or use the centralized CLI:

```bash
python cli.py monitor
python cli.py security
python cli.py maintenance
python cli.py backup
python cli.py webops
```

Examples:

```bash
python cli.py monitor --disk
python cli.py security --sudo-audit
python cli.py backup --validate
python cli.py webops --ssl-check
```

---

# Technologies Used

* Python 3.x
* Linux System Utilities
* systemd
* psutil
* subprocess
* logging
* argparse
* cron
* rsync
* tar
* Docker CLI
* Nginx
* OpenSSL

---

# Learning Objectives

This project helps develop practical skills in:

* Linux Administration
* DevOps Automation
* Site Reliability Engineering (SRE)
* Infrastructure Monitoring
* Security Auditing
* Incident Prevention
* Backup & Recovery
* Service Management
* Log Analysis
* Python Automation

---

# Future Enhancements

* Web dashboard
* REST API integration
* Slack and Teams notifications
* Email alerting
* Prometheus exporter
* Grafana dashboards
* Multi-server monitoring
* Ansible integration
* Kubernetes support
* Automated remediation workflows

---

# License

This project is intended for educational, portfolio, and learning purposes. Modify and extend it as needed to suit your environment and requirements.

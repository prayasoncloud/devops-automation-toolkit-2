# Linux Administration & DevOps Automation Suite

## 1. Linux System Health & Monitoring Suite

### 1.1 Resource Monitor

**Purpose:** Monitor overall system health.

**Checks:**

* CPU usage
* Memory usage
* Swap usage
* Load average
* Uptime

---

### 1.2 Disk Usage Monitor

**Purpose:** Detect storage issues before disks fill up.

**Checks:**

* Partition usage
* Large directories
* Disk growth trends
* Threshold alerts (80%, 90%, 95%)

---

### 1.3 Network Monitor

**Purpose:** Verify network availability and performance.

**Checks:**

* Ping latency
* Packet loss
* DNS resolution
* Gateway reachability
* Internet connectivity

---

### 1.4 Process Health Monitor

**Purpose:** Track important processes.

**Checks:**

* Process existence
* CPU consumption
* Memory consumption
* Zombie processes
* Process restart recommendations

---

### 1.5 Service Watchdog

**Purpose:** Ensure critical services stay running.

**Checks:**

* systemd service status
* Service uptime
* Automatic restart on failure
* Restart logging

**Examples:**

* nginx
* mysql
* docker
* sshd

---

### 1.6 Memory Leak Detector

**Purpose:** Identify processes consuming increasing memory.

**Checks:**

* Memory snapshots
* Historical comparison
* Growth trends
* Leak suspicion alerts

---

# 2. Linux Security Audit & Hardening Toolkit

### 2.1 User Audit Tool

**Purpose:** Review system users.

**Checks:**

* Active users
* Disabled users
* Service accounts
* Expired accounts
* Last login activity

---

### 2.2 Group Audit Tool

**Purpose:** Review group memberships.

**Checks:**

* Privileged groups
* Unused groups
* Suspicious memberships

---

### 2.3 Sudo Access Auditor

**Purpose:** Verify privileged access.

**Checks:**

* sudoers entries
* NOPASSWD rules
* Unauthorized privilege escalation risks

---

### 2.4 Failed Login Analyzer

**Purpose:** Detect brute-force attempts.

**Checks:**

* Failed SSH logins
* Repeated IP addresses
* Login trends
* Attack summaries

---

### 2.5 Open Port Scanner

**Purpose:** Discover exposed services.

**Checks:**

* Listening ports
* Public-facing services
* Unexpected services
* Service-to-port mapping

---

### 2.6 File Permission Auditor

**Purpose:** Identify permission issues.

**Checks:**

* World-writable files
* SUID binaries
* SGID binaries
* Sensitive file permissions

---

### 2.7 Package Compliance Checker

**Purpose:** Verify package state.

**Checks:**

* Missing updates
* Security patches
* Unsupported packages
* Version compliance

---

### 2.8 Security Hardening Validator

**Purpose:** Check hardening status.

**Checks:**

* SSH configuration
* Password policies
* Firewall status
* Root login restrictions
* Audit logging

---

# 3. Infrastructure Maintenance Manager

### 3.1 Log Cleanup Manager

**Purpose:** Manage log growth.

**Functions:**

* Archive logs
* Compress logs
* Delete old logs
* Retention policies

---

### 3.2 Docker Cleanup Manager

**Purpose:** Recover storage.

**Functions:**

* Remove dangling images
* Remove unused containers
* Remove unused volumes
* Storage reports

---

### 3.3 Cron Job Auditor

**Purpose:** Validate scheduled tasks.

**Checks:**

* Existing cron jobs
* Duplicate jobs
* Broken commands
* Failed schedules

---

### 3.4 Maintenance Report Generator

**Purpose:** Produce maintenance summaries.

**Includes:**

* Cleanup statistics
* Storage recovered
* Job audit results

---

# 4. Backup & Disaster Recovery Framework

### 4.1 Backup Manager

**Purpose:** Create backups.

**Supports:**

* File backups
* Directory backups
* Database backups
* Incremental backups

---

### 4.2 Backup Scheduler

**Purpose:** Automate backup execution.

**Features:**

* Daily backups
* Weekly backups
* Monthly backups

---

### 4.3 Backup Integrity Validator

**Purpose:** Verify backup quality.

**Checks:**

* File hashes
* Archive integrity
* Corruption detection

---

### 4.4 Restore Validator

**Purpose:** Test recoverability.

**Checks:**

* Restore test environment
* File restoration
* Data verification

---

### 4.5 Retention Manager

**Purpose:** Control backup lifecycle.

**Features:**

* Keep last N backups
* Archive old backups
* Delete expired backups

---

# 5. Web Server Operations Toolkit

### 5.1 SSL Certificate Monitor

**Purpose:** Prevent certificate expiration.

**Checks:**

* Days remaining
* Expired certificates
* Renewal reminders

---

### 5.2 SSL Security Auditor

**Purpose:** Evaluate TLS configuration.

**Checks:**

* Protocol versions
* Cipher suites
* Weak configurations

---

### 5.3 Nginx Access Log Analyzer

**Purpose:** Analyze traffic.

**Reports:**

* Total requests
* Top IPs
* Top URLs
* Response codes

---

### 5.4 Nginx Error Log Analyzer

**Purpose:** Detect web server issues.

**Reports:**

* 404 errors
* 500 errors
* Upstream failures
* Configuration issues

---

### 5.5 Traffic & Security Reporter

**Purpose:** Generate operational insights.

**Reports:**

* Traffic trends
* Bot detection
* Suspicious requests
* Peak usage periods

---

# Summary

| Category                                 | Modules |
| ---------------------------------------- | ------- |
| Linux System Health & Monitoring Suite   | 6       |
| Linux Security Audit & Hardening Toolkit | 8       |
| Infrastructure Maintenance Manager       | 4       |
| Backup & Disaster Recovery Framework     | 5       |
| Web Server Operations Toolkit            | 5       |
| **Total Modules**                        | **28**  |

This suite provides practical experience in Linux Administration, DevOps, Site Reliability Engineering (SRE), Infrastructure Monitoring, Security Auditing, Backup Management, and Web Server Operations.

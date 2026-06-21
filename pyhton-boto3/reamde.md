

### 1. Security Group Compliance Auditor

Scans AWS accounts and regions for insecure security group configurations.

#### Checks

* Port 22 open to the internet
* Port 3389 open to the internet
* All ports exposed publicly
* Excessively permissive CIDR ranges
* Unused security groups

#### Skills Demonstrated

* EC2 APIs
* Security auditing
* Multi-region scanning
* Automated reporting

---

### 2. AWS Cost Optimization Reporter

Identifies resources contributing to unnecessary AWS spend.

#### Checks

* Idle EC2 instances
* Unattached EBS volumes
* Unused Elastic IPs
* Old snapshots
* Underutilized resources

#### Output

* Estimated monthly savings
* Resource inventory
* Cost optimization recommendations

#### Skills Demonstrated

* Cost governance
* Resource analysis
* Reporting automation

---

### 3. IAM Policy Security Auditor

Analyzes IAM users, roles, and policies for security risks.

#### Checks

* Administrator permissions
* Wildcard actions
* Wildcard resources
* Missing MFA
* Old access keys
* Privilege escalation risks

#### Skills Demonstrated

* IAM policy parsing
* Security analysis
* JSON processing

---

### 4. Multi-Account Inventory Generator

Generates a centralized inventory across multiple AWS accounts.

#### Collects

* EC2 instances
* S3 buckets
* RDS databases
* IAM roles
* Security groups

#### Features

* Cross-account access using STS AssumeRole
* Multi-region discovery
* CSV and JSON export

#### Skills Demonstrated

* AWS Organizations
* STS AssumeRole
* Inventory management

---

### 5. AWS Compliance Scanner

Performs organization-wide security and compliance checks.

#### Checks

* Public S3 buckets
* Public security groups
* Encryption status
* MFA enforcement
* Logging configuration

#### Output

* Compliance score
* Risk report
* Remediation recommendations

#### Skills Demonstrated

* Security governance
* Compliance automation
* Multi-service auditing

---

### 6. AWS Tag Compliance Checker

Ensures resources follow organizational tagging standards.

#### Required Tags

* Owner
* Environment
* Project
* CostCenter

#### Services Supported

* EC2
* RDS
* S3
* Lambda

#### Skills Demonstrated

* Governance automation
* Resource validation
* Reporting

---

### 7. Unused AWS Resource Finder

Detects orphaned and unused AWS resources.

#### Finds

* Unattached EBS volumes
* Unused Elastic IPs
* Orphaned ENIs
* Unused Security Groups
* Stale Snapshots

#### Skills Demonstrated

* Resource discovery
* Cost optimization
* Cleanup automation

---

### 8. Configuration Drift Detector

Detects deviations between expected and actual AWS infrastructure.

#### Monitors

* Instance types
* Security groups
* Tags
* IAM roles
* Network configurations

#### Skills Demonstrated

* Infrastructure auditing
* Configuration management
* Drift detection

---

### 9. Cross-Region Disaster Recovery Auditor

Evaluates disaster recovery readiness across AWS regions.

#### Checks

* Backup availability
* Multi-AZ deployments
* Cross-region replication
* Snapshot coverage
* Recovery readiness

#### Skills Demonstrated

* DR planning
* Business continuity validation
* Multi-region automation

---

### 10. AWS Resource Relationship Mapper

Maps relationships between AWS resources.

#### Examples

* EC2 → Security Groups
* EC2 → IAM Roles
* EC2 → EBS Volumes
* Load Balancers → Target Groups
* VPC → Subnets

#### Output

* Dependency reports
* Infrastructure mapping
* Relationship visualization data

#### Skills Demonstrated

* Resource graph creation
* Infrastructure discovery
* Cloud architecture analysis


---

## Learning Objectives

These projects are designed to develop practical skills in:

* Boto3 automation
* AWS governance
* Cloud security
* Cost optimization
* Multi-account architecture
* Multi-region operations
* Production-grade Python scripting
* Reporting and auditing
* Cloud compliance


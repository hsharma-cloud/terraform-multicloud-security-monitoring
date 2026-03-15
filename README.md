# Terraform Multi-Cloud Security Monitoring

## Overview

## Project Goals

This project demonstrates how to build a **multi-cloud security monitoring architecture** using Terraform.

The objective is to simulate how a security engineering team might deploy centralized monitoring across multiple cloud providers.

Key goals of the project:

- Deploy security telemetry collection in AWS and Azure
- Centralize cloud activity logging
- Detect suspicious activity using log analytics
- Trigger automated security alerts
- Demonstrate Infrastructure as Code using Terraform
- Build a realistic cloud security engineering portfolio project

---

### Azure Security Monitoring Pipeline

```
Azure Activity Logs
        │
        ▼
Diagnostic Settings
        │
        ▼
Log Analytics Workspace
        │
        ▼
Azure Monitor Alerts
        │
        ▼
Action Groups
```
## AWS Security Monitoring Pipeline

The AWS monitoring pipeline collects API activity, stores logs for auditing, analyzes events, and generates alerts when suspicious activity is detected.

### AWS Security Monitoring Pipeline

AWS API Activity
      │
      ▼
  CloudTrail
      │
      ▼
  S3 Log Storage
      │
      ▼
  CloudWatch Logs
      │
      ▼
  Metric Filters
      │
      ▼
  CloudWatch Alarms
      │
      ▼
  SNS Security Alerts


## Terraform Project Structure

```
terraform-multicloud-security-monitoring
│
├── README.md
├── .gitignore
│
├── docs
│   └── architecture.png
│
├── screenshots
│
└── terraform
    │
    ├── aws
    │   │
    │   ├── provider.tf
    │   ├── s3.tf
    │   │
    │   └── future
    │       ├── cloudtrail.tf
    │       ├── cloudwatch.tf
    │       └── sns_alerts.tf
    │
    └── azure
        │
        ├── provider.tf
        │
        └── future
            ├── activity_logs.tf
            ├── log_analytics.tf
            └── monitor_alerts.tf
```

This project demonstrates:

- Infrastructure as Code with Terraform
- Multi-cloud security architecture
- Centralized logging
- Security monitoring and alerting
- Threat detection
- Compliance monitoring

---

## AWS Monitoring Architecture

CloudTrail → API activity logs  
S3 → centralized log storage  
CloudWatch Logs → log ingestion  
Metric Filters → detect suspicious activity  
CloudWatch Alarms → security alerts  
SNS → alert notifications  

## Deployment Screenshots

### Architecture Diagram

![Architecture Diagram](screenshots/architecture.png)

---

### Terraform Initialization

Terraform initialized successfully and downloaded required providers.

![Terraform Init](screenshots/terraform-init-success.png)

---

### Terraform Plan – Initial State

Initial Terraform plan before resources were created.

![Terraform Plan Initial](screenshots/terraform-plan-no-resources.png)

---

### Terraform Plan – S3 Bucket Creation

Terraform planning the creation of the S3 bucket used for CloudTrail log storage.

![Terraform Plan S3](screenshots/terraform-plan-s3-bucket.png)

---

### Terraform Apply – CloudTrail Deployment

Successful deployment of AWS CloudTrail logging infrastructure.

![Terraform Apply CloudTrail](screenshots/terraform-apply-cloudtrail-success.png)

---

### Terraform Apply – CloudTrail Creation

CloudTrail trail creation confirmation.

![Terraform Apply CloudTrail](screenshots/terraform-apply-cloudtrail.png)

---

### Terraform Apply – CloudWatch Alarm

CloudWatch alarm deployment for root account activity detection.

![Terraform Apply Alarm](screenshots/terraform-apply-cloudwatch-alarm.png)

---

### Terraform State Resources

Final Terraform state confirming all deployed infrastructure.

![Terraform State](screenshots/terraform-state-resources.png)

---

### Terraform Apply Output

Terraform apply execution output showing successful resource creation.

![Terraform Apply Output](screenshots/terraform apply.png)




## Terraform Deployment Workflow

The infrastructure in this project was deployed using the standard Terraform workflow.

```
Developer
   │
   ▼
Terraform Configuration (.tf files)
   │
   ▼
terraform init
   │
   ▼
terraform plan
   │
   ▼
terraform apply
   │
   ▼
Cloud Infrastructure Created
   │
   ▼
AWS Security Monitoring Pipeline
CloudTrail → S3 → CloudWatch → Metric Filters → CloudWatch Alarms
```

### Terraform Commands Used

```
terraform init
terraform plan
terraform apply
terraform state list
```

This workflow ensures that infrastructure changes are reviewed before deployment and remain reproducible using Infrastructure as Code.
Additional monitoring components:

GuardDuty → threat detection  
AWS Config → configuration monitoring  
VPC Flow Logs → network monitoring  

---

## Azure Monitoring Architecture

Activity Logs → platform events  
Diagnostic Settings → log forwarding  
Log Analytics Workspace → centralized log storage  
Azure Monitor Alerts → security alerts  
Action Groups → notification routing  

Additional monitoring components:

Defender for Cloud → threat detection  
Azure Policy → compliance monitoring  
NSG Flow Logs → network monitoring  

---

# Repository Structure

terraform-multicloud-security-monitoring

terraform/  
│  
├── aws  
│   └── provider.tf  
│  
└── azure  

README.md

---

# Deployment Plan

This project will be built in phases.

Phase 1 — Core Logging

AWS  
CloudTrail  
S3 Log Bucket  
CloudWatch Logs  

Azure  
Activity Logs  
Log Analytics Workspace  
Diagnostic Settings  

---

Phase 2 — Monitoring and Alerts

AWS  
CloudWatch Metric Filters  
CloudWatch Alarms  
SNS Notifications  

Azure  
Azure Monitor Alerts  
Action Groups  

---

Phase 3 — Threat Detection

AWS  
GuardDuty  

Azure  
Defender for Cloud  

---

Phase 4 — Advanced Monitoring

AWS  
AWS Config  
VPC Flow Logs  

Azure  
Azure Policy  
NSG Flow Logs  

---

# Current Progress

Completed

- Project structure created
- Terraform AWS provider configured
- Git repository initialized
- Code pushed to GitHub

---

# Next Steps

Next session we will begin building the AWS infrastructure.

Steps planned:

1. Initialize Terraform
2. Create the S3 logging bucket
3. Deploy CloudTrail
4. Configure CloudWatch logging

## Architecture Overview

This project implements a **multi-cloud security monitoring architecture** using Terraform across AWS and Azure.

The goal of this lab is to demonstrate how cloud security telemetry can be collected, centralized, and monitored using native cloud logging and alerting services.

---

### AWS Security Monitoring Pipeline

AWS API Activity  
→ CloudTrail  
→ S3 Log Storage  
→ CloudWatch Logs  
→ Metric Filters  
→ CloudWatch Alarms  
→ SNS Alerts

---

### Azure Security Monitoring Pipeline

Azure Activity Logs  
→ Diagnostic Settings  
→ Log Analytics Workspace  
→ Azure Monitor Alerts  
→ Action Groups

---
---

### Skills Demonstrated

- Cloud Security Architecture  
- Terraform Infrastructure as Code (IaC)  
- AWS Security Monitoring  
- Azure Security Monitoring  
- Detection Engineering

# Terraform Multi-Cloud Security Monitoring

## Overview

This project deploys centralized security monitoring infrastructure across AWS and Azure using Terraform.

The objective of this lab is to build a realistic enterprise-style security monitoring architecture using Infrastructure as Code.

This project demonstrates:

- Infrastructure as Code with Terraform
- Multi-cloud security architecture
- Centralized logging
- Security monitoring and alerting
- Threat detection
- Compliance monitoring

This repository is part of a cloud security portfolio designed to demonstrate Terraform and cloud security engineering capabilities.

---

# Architecture

The monitoring architecture is implemented across two cloud platforms.

## AWS Monitoring Architecture

CloudTrail → API activity logs  
S3 → centralized log storage  
CloudWatch Logs → log ingestion  
Metric Filters → detect suspicious activity  
CloudWatch Alarms → security alerts  
SNS → alert notifications  

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
### Architecture Diagram

![Multi-Cloud Security Monitoring Architecture](docs/architecture.png)

---

### Skills Demonstrated

- Cloud Security Architecture  
- Terraform Infrastructure as Code (IaC)  
- AWS Security Monitoring  
- Azure Security Monitoring  
- Detection Engineering

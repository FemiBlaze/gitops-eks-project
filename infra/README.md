# Terraform – AWS Infrastructure as Code

This directory contains all **infrastructure-as-code** required to provision and manage the cloud resources for the GitOps platform using **Terraform**.

Terraform is responsible **only** for creating and maintaining AWS infrastructure.  
It does **not** deploy applications or manage Kubernetes workloads.

---

## Purpose

The goal of this Terraform configuration is to provision a **production-style AWS environment** that supports:

- A managed Kubernetes cluster (Amazon EKS)
- Secure and repeatable infrastructure changes
- Remote Terraform state with locking
- Cost visibility and budget alerts

---

## Managed AWS Resources

Terraform in this directory provisions and manages:

- **Networking**
  - VPC
  - Public and private subnets
  - Internet and NAT gateways

- **Kubernetes Infrastructure**
  - Amazon EKS cluster
  - Managed node groups
  - Required IAM roles and policies

- **State Management**
  - S3 bucket for Terraform remote state
  - DynamoDB table for state locking

- **Cost Control**
  - AWS Budgets with email alerts

---

## File Breakdown

| File | Responsibility |
|---|---|
| `backend.tf` | Remote state configuration (S3 + DynamoDB) |
| `providers.tf` | AWS provider and region configuration |
| `networking.tf` | VPC, subnets, and networking resources |
| `eks.tf` | EKS cluster and node group definitions |
| `iam.tf` | IAM roles and policy attachments |
| `budgets.tf` | AWS budget alerts |
| `outputs.tf` | Exported values used by other phases |

---

## State Management (Critical)

Terraform state is **not stored locally**.

- State is stored in **Amazon S3**
- State locking is enforced using **DynamoDB**
- This prevents:
  - State loss in CI runners
  - Concurrent apply corruption
  - Drift between environments

Local state usage is intentionally avoided.

---

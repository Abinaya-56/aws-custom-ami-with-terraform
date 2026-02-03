# Custom AMI Creation and EC2 Provisioning using Terraform

This project demonstrates how to create a **custom Amazon Machine Image (AMI)** from a manually configured EC2 instance and then use **Terraform** to automatically provision new EC2 instances using that custom AMI.

The goal is to understand how real-world infrastructure teams create **golden images** and use **Infrastructure as Code (IaC)** to provision consistent, repeatable environments.

---

## Architecture Overview

Manual EC2 Instance  
→ Install / Configure Software  
→ Create Custom AMI  
→ Use AMI ID in Terraform  
→ Automatically Provision EC2 Instance

---

## Prerequisites

- AWS Account
- IAM user with EC2 and AMI permissions
- AWS CLI installed and configured
- Terraform installed
- Basic Linux and AWS EC2 knowledge
- SSH key pair

---

## Step-by-Step Implementation

### Step 1: Launch EC2 Instance Manually

1. Login to AWS Console
2. Navigate to **EC2 → Launch Instance**
3. Choose a base AMI (Amazon Linux / Ubuntu)
4. Select instance type (e.g., t2.micro)
5. Configure key pair and security group (allow SSH)
6. Launch the instance

---

### Step 2: Connect to the Instance

SSH into the instance:

```bash
ssh -i <key.pem> ec2-user@<public-ip>

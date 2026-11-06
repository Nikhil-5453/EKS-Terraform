# EKS Terraform

Terraform configuration for an AWS VPC suitable for EKS workloads. The root configuration composes reusable modules for networking and VPC security-group resources.

## Architecture

- One VPC with DNS support and hostnames enabled
- Public subnets in configured availability zones
- Private subnets with a NAT gateway for internet access
- Internet gateway and separate public/private route tables
- VPC security group with optional SSH access
- Kubernetes load balancer subnet discovery tags on public subnets

## Usage

Install Terraform 1.5 or newer and authenticate to AWS using an AWS credential provider. Do not put credentials in Terraform variable files.

```powershell
Copy-Item terraform.tfvars.example terraform.tfvars
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
```

Restrict SSH access by setting `ssh_allowed_cidrs`, for example:

```hcl
ssh_allowed_cidrs = ["203.0.113.10/32"]
```

Run `terraform destroy` when the environment is no longer needed.

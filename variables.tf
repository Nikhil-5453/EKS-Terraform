variable "aws_region" {
  description = "AWS region in which to create resources"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "172.16.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones used by the public and private subnets"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["172.16.0.0/22", "172.16.4.0/22", "172.16.8.0/22"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["172.16.30.0/24", "172.16.32.0/24", "172.16.34.0/24"]
}

variable "ssh_allowed_cidrs" {
  description = "CIDR blocks allowed to access SSH"
  type        = list(string)
  default     = []
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "eks-1"
}

variable "automation" {
  description = "Automation resource tag"
  type        = string
  default     = "true"
}

variable "team" {
  description = "Team resource tag"
  type        = string
  default     = "DevOps"
}

variable "user" {
  description = "User resource tag"
  type        = string
  default     = "Managed by Terraform"
}

variable "environment" {
  description = "Environment resource tag"
  type        = string
  default     = "DEV-EKS"
}

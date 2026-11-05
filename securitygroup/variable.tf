variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "Availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDR blocks"
  type        = list(string)
}

variable "Automation" {
  description = "Automation flag"
  type        = string
}

variable "Team" {
  description = "Team name"
  type        = string
}

variable "User" {
  description = "User name"
  type        = string
}

variable "Environment" {
  description = "Environment name"
  type        = string
}


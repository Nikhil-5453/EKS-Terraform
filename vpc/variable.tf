variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "Availability zones used by the subnets"
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

variable "automation" {
  description = "Automation resource tag"
  type        = string
}

variable "team" {
  description = "Team resource tag"
  type        = string
}

variable "user" {
  description = "User resource tag"
  type        = string
}

variable "environment" {
  description = "Environment resource tag"
  type        = string
}


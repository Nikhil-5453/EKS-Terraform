variable "vpc_id" {
  description = "ID of the VPC for the security group"
  type        = string
}

variable "ssh_allowed_cidrs" {
  description = "CIDR blocks allowed to access SSH"
  type        = list(string)
  default     = []
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


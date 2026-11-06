output "vpc_id" {
  description = "ID of the EKS VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnet_ids
}

output "security_group_id" {
  description = "ID of the EKS security group"
  value       = module.security_group.security_group_id
}

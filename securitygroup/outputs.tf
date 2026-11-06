output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.eks_vpc_security_group.id
}

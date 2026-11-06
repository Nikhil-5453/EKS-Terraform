module "vpc" {
  source = "./vpc"

  vpc_cidr_block       = var.vpc_cidr_block
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

  automation  = var.automation
  team        = var.team
  user        = var.user
  environment = var.environment
}

module "security_group" {
  source = "./securitygroup"

  vpc_id            = module.vpc.vpc_id
  ssh_allowed_cidrs = var.ssh_allowed_cidrs
  automation        = var.automation
  team              = var.team
  user              = var.user
  environment       = var.environment
}

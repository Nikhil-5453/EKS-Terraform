module "vpc_module" {
    source = "./vpc"

    vpc_cidr_block       = var.vpc_cidr_block
    Availability_zones   = var.Availability_zones
    public_subnet_cidrs  = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs

    Automation = var.Automation
    Team     = var.Team
    User = var.User
    Environment = var.Environment
}
module "vpc" {
    source = "git::https://github.com/bhargav-devops-7/terraform-aws-vpc.git?ref=main"

    # VPC
    project_name = var.project_name
    environment = var.environment
    vpc_cidr = var.vpc_cidr
    vpc_tags = var.vpc_tags

    # Public Subnet
    public_subnet_cidrs = var.public_subnet_cidrs

    # Private Subnet
    private_subnet_cidrs = var.private_subnet_cidrs

    # Database Subnet
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_connection_required = true
}
module "vpc" {
    source = "git::https://github.com/RajGitUser/terraform-aws-vpc.git?ref=main"
    # VPC
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

    # public subnets
    public_subnet_cidrs = var.subnet_public_cidrs

    # private subnets
    private_subnet_cidrs = var.subnet_private_cidrs

    # database subnets
    database_subnet_cidrs = var.subnet_database_cidrs

    is_peering_required = true
}
module "main" {
    source = "../Terraform-aws-VPC"
    cidr_block = var.cidr_block
    common_tags = var.common_tags
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = true
    vpc_cidr = var.vpc_cidr
}
module "ec2" {
    source = "../Terraform-aws-Ec2"
    instances = var.instances
    ami = var.ami
    vpc_security_group_ids = var.vpc_security_group_ids
    instance_type = var.instance_type
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
}
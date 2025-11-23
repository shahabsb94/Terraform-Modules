resource "aws_instance" "main" {
    count = length(var.instances)
    ami = var.ami # This is our devops-practice AMI ID
    vpc_security_group_ids = [var.vpc_security_group_ids]
    instance_type = var.instance_type

    tags = merge(
        var.common_tags,
        {
            Name = "${local.resource_name}-${var.instances[count.index]}"
        })
    }
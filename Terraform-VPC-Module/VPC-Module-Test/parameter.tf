

### to store the created VPC ID in SSM parameter store in AWS we have to use this ####

resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id" ## --- /expense/dev/vpc_id --- name should start with /
  type  = "String"
  value = module.main.vpc_id
}
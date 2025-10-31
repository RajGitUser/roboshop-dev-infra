# data "aws_ssm_parameter" "backend_alb_sg_id" {
#   name  = "/${var.project_name}/${var.environment}/backend_alb_sg_id"
# }

# resource "aws_ssm_parameter" "bastion_sg_id" {
#   name  = "/${var.project_name}/${var.environment}/bastion_sg_id"
# }

# resource "aws_ssm_parameter" "public_subnet_ids" {
#   name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
# }

data "aws_ssm_parameter" "backend_alb_sg_id" {
  name  = "/${var.project_name}/${var.environment}/backend_alb_sg_id"
}

data "aws_ssm_parameter" "bastion_sg_id" {
  name  = "/${var.project_name}/${var.environment}/bastion_sg_id"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
}
resource "aws_ssm_parameter" "sg_id" {
  count = length(var.sg_names)
  name  = "/${var.project_name}/${var.environment}/${var.sg_names[count.index]}_sg_id" # /roboshop/dev/catalogue_sg_id
  type  = "String"
  value = module.sg[count.index].sg_id
}

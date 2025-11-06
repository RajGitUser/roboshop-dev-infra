locals {
    common_name_suffix = "${var.project_name}-${var.environment}" # roboshop-dev
    ami_id = data.aws_ami.joindevops.id
    catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    private_subnet_ids = data.aws_ssm_parameter.private_subnet_ids
    backend_alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
    private_subnet_id = split("," , data.aws_ssm_parameter.private_subnet_ids.value)[0]
    common_tags = {
        project_name = var.project_name
        environment = var.environment
        terraform = true
    }
}
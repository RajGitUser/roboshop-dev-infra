locals {
    ami_id = data.aws_ami.joindevops.id
    mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id.vlaue
    database_subnet_id = split("," , data.aws_ssm_parameter.database_subnet_ids.value)[0]
    ami_id = data.aws_ami.joindevops.id
    common_tags = {
        project_name = var.project_name
        environment = var.environment
        terraform = true
    }
}
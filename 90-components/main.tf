# module "components" {
#     source = "https://github.com/RajGitUser/terraform-roboshop-component.git?ref=main"
#     component = var.component
#     rule_priority = var.rule_priority
# }

module "components" {
    for_each = var.components
    source = "git::https://github.com/RajGitUser/terraform-roboshop-component.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}
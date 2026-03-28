module "security_groups" {
    source = "git::https://github.com/bhargav-devops-7/terraform-aws-sg.git?ref=main"

    count = length(var.sg_names)
    project_name = var.project_name
    environment = var.environment
    sg_name = var.sg_names[count.index]
    sg_description = "Created for ${var.sg_names[count.index]}"
    vpc_id = local.vpc_id
}
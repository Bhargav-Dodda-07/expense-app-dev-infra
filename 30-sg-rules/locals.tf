locals {
    common_name_suffix = "${var.project_name}-${var.environment}"
    backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
    bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.value

    common_tags = {
        Project = var.project_name
        Environment = var.environment
        Terraform = "true"
    }
}
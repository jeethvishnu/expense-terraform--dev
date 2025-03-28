module "db" {
    source = "../aws-sec-grp"
    project = var.project
    env = var.env
    sg_decsript = var.db_sg_descr
    vpc_id = data.aws_ssm_parameter.vpc_id.value #whatever the vpc val we gave in parameter that will store here
    common_tags = var.common_tags
    sg_name = "db"
  
}

module "backend" {
    source = "../aws-sec-grp"
    project = var.project
    env = var.env
    sg_decsript = "sg for backend"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    sg_name = "backend"
  
}

module "frontend" {
    source = "../aws-sec-grp"
    project = var.project
    env = var.env
    sg_decsript = "sg for frontend"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    sg_name = "frontend"
  
}

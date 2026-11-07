module "frontend" {
  
  #source = "../../terraform-aws-securitygroup"
  source = "git::https://github.com/AdamshafiDev/aws_security_group.git?ref=main"
  project = var.project
  envirnoment   = var.envirnoment
  sg_name  = var.frontend_sg_name
  sg_description =var.sg_description
  vpc_id    = local.vpc_id
  
}
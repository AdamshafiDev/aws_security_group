# module "frontend" {

#   #source = "../../terraform-aws-securitygroup"
#   source = "git::https://github.com/AdamshafiDev/aws_security_group.git?ref=main"
#   project = var.project
#   environment    = var.environment 
#   sg_name  = var.frontend_sg_name
#   sg_description = var.sg_description
#   vpc_id    = local.vpc_id

# }

# module "bastion" {

#  # source = "../../terraform-aws-securitygroup"
#   source = "git::https://github.com/AdamshafiDev/aws_security_group.git?ref=main"
#   project = var.project
#   environment    = var.environment 
#   sg_name  = var.bastion_sg_name
#   sg_description = var.bastion_sg_description
#   vpc_id    = local.vpc_id

# }

module "frontend" {
  source = "git::https://github.com/AdamshafiDev/aws_security_group.git?ref=main"

  project          = var.project
  environment      = var.environment
  frontend_sg_name = var.frontend_sg_name
  sg_description   = var.sg_description
  vpc_id           = local.vpc_id
}

module "bastion" {
  source = "git::https://github.com/AdamshafiDev/aws_security_group.git?ref=main"

  project         = var.project
  environment     = var.environment
  bastion_sg_name = var.bastion_sg_name
  sg_description  = var.bastion_sg_description
  vpc_id          = local.vpc_id
}


resource "aws_security_group_rule" "bastion_laptop" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = module.sg_id
}
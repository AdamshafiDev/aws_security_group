locals {
  vpc_id = local.data.aws_ssm_parameter.vpc_id.value
}
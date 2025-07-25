resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_id" {
  name  = "/${var.project}/${var.environment}/public_subnet_id"
  type  = "StringList"
  value = join("," , module.vpc.public_subnet_id)
}

resource "aws_ssm_parameter" "private_subnet_id" {
  name  = "/${var.project}/${var.environment}/private_subnet_id"
  type  = "StringList"
  value = join("," , module.vpc.private_subnet_id)
}

resource "aws_ssm_parameter" "database_subnet_id" {
  name  = "/${var.project}/${var.environment}/database_subnet_id"
  type  = "StringList"
  value = join("," , module.vpc.database_subnet_id)
}
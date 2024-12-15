output "ssm_vpc_id" {
  value = aws_ssm_parameter.vpc.id
}

output "ssm_subnet_private_1a" {
  value = aws_ssm_parameter.private_1a.id
}

output "ssm_subnet_private_1b" {
  value = aws_ssm_parameter.private_1b.id
}

output "ssm_subnet_private_1c" {
  value = aws_ssm_parameter.private_1c.id
}


output "ssm_subnet_public_1a" {
  value = aws_ssm_parameter.public_1a.id
}

output "ssm_subnet_public_1b" {
  value = aws_ssm_parameter.public_1b.id
}

output "ssm_subnet_public_1c" {
  value = aws_ssm_parameter.public_1c.id
}


output "ssm_subnet_databases_1a" {
  description = "ID da subnet de bancos de dados na zona de disponibilidade 1a. Este ID é recuperado do AWS Systems Manager Parameter Store e usado para o provisionamento de instâncias de banco de dados nesta zona específica."
  value       = aws_ssm_parameter.databases_1a.id
}

output "ssm_subnet_databases_1b" {
  description = "ID da subnet de bancos de dados na zona de disponibilidade 1b. Obtido do AWS Systems Manager Parameter Store, é essencial para a alocação de instâncias de banco de dados que precisam ser isoladas nesta zona."
  value       = aws_ssm_parameter.databases_1b.id
}

output "ssm_subnet_databases_1c" {
  description = "ID da subnet de bancos de dados na zona de disponibilidade 1c, proveniente do AWS Systems Manager Parameter Store. Utilizado no provisionamento de instâncias de banco de dados que requerem isolamento nesta zona."
  value       = aws_ssm_parameter.databases_1c.id
}
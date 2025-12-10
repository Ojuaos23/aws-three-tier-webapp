output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "web_sg_id" {
  value = aws_security_group.web_sg.id
}

output "db_sg_id" {
  value = aws_security_group.db_sg.id
}

output "db_subnet_group_name" {
  value = aws_db_subnet_group.db_subnet_group.name
}
output "db_endpoint" {
  description = "RDS Database endpoint"
  value       = aws_db_instance.mysql.address
}

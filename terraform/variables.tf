variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  type    = string
  default = "10.0.2.0/24"
}
variable "db_username" {
  description = "Username for RDS MySQL"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for RDS MySQL"
  type        = string
  sensitive   = true
}

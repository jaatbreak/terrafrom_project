# AWS Region
variable "aws_region" {
  description = "The AWS region to deploy the resources in."
  default     = "us-east-1"
}

# Subnet Group Name
variable "subnet_group_name" {
  description = "Name of the RDS subnet group."
  default     = "rds-subnet-group"
}

# Subnet IDs
variable "subnet_ids" {
  description = "List of subnet IDs to associate with the RDS instance."
  type        = list(string)
  default = [ "subnet-02d6dd2702885baad","subnet-0309a373acbbfcd38" ]
}


# DB Instance Name
variable "db_instance_name" {
  description = "Name of the RDS DB instance."
  default     = "my-postgres-db"
}

# DB Username
variable "username" {
  description = "Master username for the RDS instance."
  default     = "adminuseraman"
}

# # DB Password
# variable "password" {
#   description = "Master password for the RDS instance."
#   type        = string
#   default = "test#12345"
# }

# RDS Instance Class
variable "instance_class" {
  description = "The instance class for the RDS PostgreSQL instance."
  default     = "db.t3.medium"
}

# Allocated Storage
variable "allocated_storage" {
  description = "The allocated storage for the RDS instance (in GB)."
  default     = 20
}

# PostgreSQL Engine Version
variable "engine_version" {
  description = "The version of PostgreSQL to use."
  default     = "16.3"
}

variable "vpc_security_group_ids" {
  description = "define the security group string"
  type = list(string)
}

variable "secret_arn" {
  description = "ARN of the secret in AWS Secrets Manager"
  type        = string
}




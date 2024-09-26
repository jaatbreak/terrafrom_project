# AWS Region
variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

# VPC ID
variable "vpc_id" {
  description = "The ID of the VPC to deploy Neptune in"
  type        = string
  default = "vpc-0a5d21b64177a9993"
}

# Subnet IDs for Neptune Subnet Group
variable "subnet_ids" {
  description = "List of subnet IDs for Neptune cluster"
  type        = list(string)
  default = [ "subnet-02d6dd2702885baad", "subnet-0309a373acbbfcd38" ]
}

# Neptune Subnet Group Name
variable "neptune_subnet_group_name" {
  description = "Name of the Neptune subnet group"
  type        = string
  default     = "neptune-subnet-group"
}

# Neptune Cluster Identifier
variable "neptune_cluster_identifier" {
  description = "Identifier for the Neptune cluster"
  type        = string
  default     = "db-neptune-1"
}

# Neptune Parameter Group Name
variable "neptune_parameter_group_name" {
  description = "Name of the Neptune parameter group"
  type        = string
  default     = "neptune-cluster-parameter-group"
}

# Security Group Name for Neptune
variable "neptune_security_group_name" {
  description = "Name of the security group for Neptune"
  type        = string
  default     = "neptune-security-group"
}

# Allowed CIDR blocks for Neptune access
variable "allowed_cidr_blocks" {
  description = "Allowed CIDR blocks for access to Neptune cluster"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Replace with your actual VPC CIDR
}

# Instance count for Neptune cluster
variable "instance_count" {
  description = "Number of Neptune instances (primary and replicas)"
  type        = number
  default     = 1
}

# Neptune instance class
variable "instance_class" {
  description = "Instance class for Neptune instances"
  type        = string
  default     = "db.t3.medium"
}

# Backup Retention Period (days)
variable "backup_retention_period" {
  description = "The number of days to retain backups"
  type        = number
  default     = 5
}

# Preferred Backup Window
variable "preferred_backup_window" {
  description = "Preferred backup window"
  type        = string
  default     = "07:00-09:00"
}

# Preferred Maintenance Window
variable "preferred_maintenance_window" {
  description = "Preferred maintenance window"
  type        = string
  default     = "sun:23:00-mon:01:30"
}

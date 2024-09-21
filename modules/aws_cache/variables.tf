variable "cluster_name" {
  description = "The name of the ElastiCache Redis cluster"
  type        = string
  default     = "flerken-qa"
}

variable "node_type" {
  description = "The instance type for the ElastiCache Redis nodes"
  type        = string
  default     = "cache.t3.micro"
}

variable "engine_version" {
  description = "Redis engine version"
  type        = string
  default     = "7.1"
}

variable "parameter_group_name" {
  description = "Name of the Redis parameter group"
  type        = string
  default     = "default.redis7"
}

variable "num_cache_nodes" {
  description = "Number of cache nodes in the Redis cluster"
  type        = number
  default     = 1
}

variable "port" {
  description = "Port number on which Redis will be available"
  type        = number
  default     = 6379
}

variable "subnet_group_name" {
  description = "The name of the cache subnet group"
  type        = string
  default = "test-subnet-grp"
}



variable "auto_failover" {
  description = "Whether to enable Multi-AZ with automatic failover"
  type        = bool
  default     = false
}

variable "transit_encryption_enabled" {
  description = "Enable in-transit encryption for Redis"
  type        = bool
  default     = true
}

variable "at_rest_encryption_enabled" {
  description = "Enable encryption at rest for Redis"
  type        = bool
  default     = false
}

variable "subnet_ids" {
    description = "subnet-group"
    type = list(string)
    default = [ "subnet-02d6dd2702885baad","subnet-0309a373acbbfcd38" ]
  
}

variable "vpc_security_group_ids" {
  description = "define the security group string"
  type = list(string)
}
# variables.tf

variable "instance_class" {
  description = "The instance class for the Neptune instance"
  type        = string
  default     = "db.r5.large"  # Smallest supported instance class for Neptune
}

variable "allowed_cidr_blocks" {
  description = "List of allowed CIDR blocks for inbound traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "subnet_ids" {
  description = "The subnet IDs to associate with the Neptune cluster"
  type        = list(string)
  default     = ["subnet-02d6dd2702885baad","subnet-0309a373acbbfcd38"]
}

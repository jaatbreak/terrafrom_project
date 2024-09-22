variable "region" {
    description = "define the region"
    type = string
    default = "us-east-1"
  
}



variable "domain_name" {
  description = "The domain name for which to request the ACM certificate"
  type        = string
  default = "chanchaltech.in.net"
}

variable "subject_alternative_names" {
  description = "Optional alternative domain names for the certificate"
  type        = list(string)
  default     = ["chanchaltech.in.net"]  # Empty list if no SANs
}

variable "certificate_arn" {
  description = "certificate arn"
  type = string
  
}
variable "aws_region" {
  description = "The AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "s3_bucket" {
  description = "S3 bucket for Zappa deployment"
  type        = string 
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
  default = "flask-lambda-function"
}

variable "lambda_s3_key" {
  description = "The key in the S3 bucket where the Lambda function code is stored"
  type        = string
  
}

variable "role_arn" {
  description = "The ARN of the IAM role for Lambda"
  type        = string
}

variable "lambda_handler" {
  description = "The handler for the Lambda function"
  type        = string
  default     = "handler.lambda_handler"  # Example handler
}

variable "lambda_runtime" {
  description = "The runtime environment for the Lambda function"
  type        = string
  default     = "python3.8"
}

variable "api_gateway_name" {
  description = "Name of the API Gateway"
  type        = string
  default = "test-api-gt"
}

variable "domain" {
  description = "The custom domain for API Gateway"
  type        = string
  default = "www.chanchaltech.net.in"
}

variable "certificate_arn" {
  description = "The ARN of the SSL certificate for the domain"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for Lambda VPC configuration"
  type        = list(string)
  default = [ "subnet-02d6dd2702885baad","subnet-0309a373acbbfcd38" ]
}

variable "security_group_ids" {
  description = "List of security group IDs for Lambda VPC configuration"
  type        = list(string)
 
}
variable "dns_name" {
  description = "dns name " 
  type = string
  default = "chanchaltech.in.net" 
}
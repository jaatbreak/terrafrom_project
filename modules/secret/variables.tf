variable "aws_region" {
  description = "The AWS region where resources will be created"
  default     = "us-east-1"
}

variable "secret_name" {
  description = "The name of the secret in AWS Secrets Manager"
  default     = "secret-flerken-ab"
}

variable "django_private_key" {
  description = "Private key for Django"
  default     = "1e56c5e8-5833-4a1f-9cac-882795bc5b36"
}

variable "django_field_encryption_key" {
  description = "Field encryption key for Django"
  default     = "Fkk1r+h4o1EaRLy5MHTn26G3WfNfTcA8HvIRJ3Le"
}

variable "saml_x509_certificate" {
  description = "X509 Certificate for SAML"
  default     = "-----BEGIN CERTIFICATE-----\ndummy_certificate_data\n-----END CERTIFICATE-----"
}

variable "eve_user_access_key_id" {
  description = "Access key ID for EVE user"
  default     = "AKIA6B7Q34TURNS0AMQR"
}

variable "eve_user_secret_access_key" {
  description = "Secret access key for EVE user"
  default     = "JLu3XzkhC+Dt4VxH37Fh9FwPx3jg5tFnv3"
}

variable "postgres_password" {
  description = "Password for PostgreSQL"
  default     = "5b4086c0-583f-43f1-9074-25704e9a8b97"
}

variable "ac_key" {
  description = "Access key for AC"
  default     = "5adf03b1-56da-4cf2-8820-3cfeb59e4e57"
}

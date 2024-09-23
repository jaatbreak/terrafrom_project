# Request ACM Certificate for the domain
resource "aws_acm_certificate" "tech_cert" {
  provider = aws  # Remove quotes around 'aws'
  domain_name       = var.domain_name
  validation_method = "DNS"  # Using DNS validation for ACM certificate

  subject_alternative_names = var.subject_alternative_names

  lifecycle {
    create_before_destroy = true
  }
}

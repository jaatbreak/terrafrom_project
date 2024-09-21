#ECR Respository private 
resource "aws_ecr_repository" "my_private_repo" {
  name = "my-private-repo"

  tags = {
    Name        = "my-private-repo"
    Environment = "staging"  # Change as needed
  }
}

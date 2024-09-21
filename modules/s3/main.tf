# Generate random string
resource "random_string" "unique_id" {
  length  = 6
  special = false
  upper   = false
}

# Create S3 bucket with unique name
resource "aws_s3_bucket" "bucket_create" {
  bucket = "flerken-zappa-qa-${random_string.unique_id.result}"
}

# Create folders in S3 bucket
resource "aws_s3_object" "folder_create_graph" {
  bucket = aws_s3_bucket.bucket_create.bucket
  key    = "graph/"
  acl    = "private"
}

resource "aws_s3_object" "folder_create_csv" {
  bucket = aws_s3_bucket.bucket_create.bucket
  key    = "csv/"
  acl    = "private"
}

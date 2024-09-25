
# Create an Amazon Neptune cluster
resource "aws_neptune_cluster" "neptune_cluster" {
  cluster_identifier      = "db-neptune-1"
  engine                  = "neptune"
  engine_version          = "1.1.1.0"  # Modify version as needed
  backup_retention_period = 7
  preferred_backup_window = "07:00-09:00"
  preferred_maintenance_window = "mon:03:00-mon:04:00"
  storage_encrypted       = true
  apply_immediately       = true
  skip_final_snapshot = false
}

# Create one Neptune cluster instance with the smallest supported instance size
resource "aws_neptune_cluster_instance" "neptune_instance" {
  count              = 1
  cluster_identifier = aws_neptune_cluster.neptune_cluster.id
  instance_class     = var.instance_class  # Smallest Neptune instance class
  apply_immediately  = true
}

# Security group to allow inbound traffic to Neptune
resource "aws_security_group" "neptune_sg" {
  name        = "neptune_security_group"
  description = "Allow Neptune inbound traffic"
 

  ingress {
    from_port   = 8182
    to_port     = 8182
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Neptune subnet group
resource "aws_neptune_subnet_group" "neptune_subnet_group" {
  name       = "neptune_subnet_group"
  subnet_ids = var.subnet_ids
}

# Attach security group to Neptune instances
resource "aws_neptune_cluster_parameter_group" "neptune_parameters" {
  name        = "neptune-parameters"
  family      = "neptune1"
  description = "Neptune cluster parameter group"
}

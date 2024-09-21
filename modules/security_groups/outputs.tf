output "postgres_sg_id" {
  value = aws_security_group.postgres_sg.id
}

output "redis_sg_id" {
  value = aws_security_group.redis_sg.id
  
}

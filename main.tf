

module "iam" {
  source = "./modules/iam"
}

module "s3" {
  source = "./modules/s3"
}

module "ecr" {
  source = "./modules/ecr"
}


module "security_groups" {
  source = "./modules/security_groups"

}

module "secret" {
  source = "./modules/secret"
 
 
}

module "aws_db_instance" {
  source = "./modules/aws_rds"
  vpc_security_group_ids = [module.security_groups.postgres_sg_id]
  secret_arn      = module.secret.secret_arn # Pass the secret ARN from the secret module
  
}

module "aws_elasticache_cluster" {
  source = "./modules/aws_cache"
  vpc_security_group_ids = [module.security_groups.redis_sg_id]
  
}

module "aws_acm_certificate" {
  source = "./modules/acm"
  certificate_arn = module.aws_acm_certificate.certificate_arn
  
}

module "zappa_lambda" {
  source = "./modules/zappa_lambda"
s3_bucket =  module.s3.s3_bucket_ids[0].bucket
role_arn = module.iam.iam_role_ids
certificate_arn = module.aws_acm_certificate.certificate_arn
lambda_s3_key = "lambda_function.zip"  #upload the zip automatically using commands
security_group_ids = [ module.security_groups.postgres_sg_id, module.security_groups.redis_sg_id, module.security_groups.secrets_manager_sg_ids ]

  
}

module "aws_neptune_cluster_instance" {
   source = "./modules/aws_neptune"

}

module "aws_neptune_cluster" {
  source = "./modules/aws_neptune"
  
}
  


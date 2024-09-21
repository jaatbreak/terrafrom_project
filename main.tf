provider "aws" {
  region = "us-east-1"
  
}

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





  




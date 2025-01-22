provider "aws" {
  region = "us-east-1"
}

# Call VPC Module
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = "10.0.0.0/16"
  tags = {
    Name = "main-vpc"
  }
}

# Call EKS Module
module "eks" {
  source       = "./modules/eks"
  cluster_name = "example-cluster"
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnet_ids
}

# Call RDS Module
module "rds" {
  source            = "./modules/rds"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
}

# Call ElastiCache Module
module "elasticache" {
  source            = "./modules/elasticache"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
}

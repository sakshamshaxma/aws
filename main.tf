provider "aws" {
  region = "us-east-1"
}

# Call VPC Module
module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr # Reference to variable vpc_cidr
  tags     = var.tags     # Reference to the tags variable
}

# Call EKS Module
module "eks" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnet_ids
}

# Call RDS Module
module "rds" {
  source             = "./modules/rds"
  private_subnet_ids = module.vpc.private_subnet_ids
  rds_username       = var.rds_username # Reference to input variable rds_username
  rds_password       = var.rds_password # Reference to input variable rds_password
  tags               = var.tags         # Reference to the tags variable
}

# Call ElastiCache Module
module "elasticache" {
  source             = "./modules/elasticache"
  private_subnet_ids = module.vpc.private_subnet_ids
  tags               = var.tags
}


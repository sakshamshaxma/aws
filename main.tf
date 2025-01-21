# Main Terraform Configuration
provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "./modules/vpc"
  region = var.region
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
}

module "eks" {
  source = "./modules/eks"
  region = var.region
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  cluster_name = var.cluster_name
  cluster_role_arn = var.cluster_role_arn
  node_group_name = var.node_group_name
  node_role_arn = var.node_role_arn
  desired_capacity = var.desired_capacity
  max_capacity = var.max_capacity
  min_capacity = var.min_capacity
}

module "rds" {
  source = "./modules/rds"
  db_name = var.db_name
  db_username = var.db_username
  db_password = var.db_password
  security_group_id = module.vpc.main_security_group_id
  db_subnet_group_name = module.vpc.db_subnet_group_name
}

module "elasticache" {
  source = "./modules/elasticache"
  cluster_id = var.elasticache_cluster_id
  subnet_group_name = module.vpc.elasticache_subnet_group_name
  security_group_id = module.vpc.main_security_group_id
}
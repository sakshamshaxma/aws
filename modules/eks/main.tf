# EKS main.tf
module "vpc" {
  source = "../vpc"
  region = var.region
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
}

resource "aws_eks_cluster" "main" {
  name = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = module.vpc.public_subnet_ids
  }
}

resource "aws_eks_node_group" "main" {
  cluster_name    = aws_eks_cluster.main.name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn
  subnet_ids      = module.vpc.public_subnet_ids

  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_capacity
    min_size     = var.min_capacity
  }
}
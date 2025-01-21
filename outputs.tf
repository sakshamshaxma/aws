# Main outputs.tf
output "eks_cluster_id" {
  value = module.eks.eks_cluster_id
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

output "elasticache_endpoint" {
  value = module.elasticache.elasticache_endpoint
}
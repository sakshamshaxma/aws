# Elasticache outputs.tf
output "elasticache_endpoint" {
  value = aws_elasticache_cluster.memcached.cache_nodes[0].address
}
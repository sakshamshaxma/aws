resource "aws_elasticache_subnet_group" "cache" {
  name       = "cache-subnet-group"
  subnet_ids = var.private_subnet_ids
  tags       = var.tags
}

resource "aws_elasticache_cluster" "cache" {
  cluster_id           = "cache-cluster"
  engine               = "redis" # Corrected engine from "valkey" to "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  subnet_group_name    = aws_elasticache_subnet_group.cache.name
  tags                 = var.tags
}

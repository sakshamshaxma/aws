resource "aws_elasticache_subnet_group" "cache" {
  name       = "cache-subnet-group"
  subnet_ids = var.private_subnet_ids
  tags       = var.tags
}

resource "aws_elasticache_cluster" "cache" {
  engine       = "redis"
  engine_version = "7.0"  # Make sure to use the correct version for Redis 7
  cluster_id   = "cache-cluster"
  node_type    = "cache.t2.micro"
  num_cache_nodes = 1
  # Other configurations as required
}

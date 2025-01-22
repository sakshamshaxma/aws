resource "aws_elasticache_subnet_group" "cache" {
  name       = "cache-subnet-group"
  subnet_ids = var.public_subnet_ids
  tags       = var.tags
}

resource "aws_elasticache_cluster" "cache" {
  cluster_id           = "cache-cluster"
  engine               = "valkey"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.valkey3.2"
  subnet_group_name    = aws_elasticache_subnet_group.cache.name
  tags                 = var.tags
}

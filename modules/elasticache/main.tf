# Elasticache main.tf
resource "aws_elasticache_cluster" "memcached" {
  cluster_id           = var.cluster_id
  engine               = "memcached"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.memcached1.4"
  port                 = 11211
  subnet_group_name    = var.subnet_group_name
  security_group_ids   = [var.security_group_id]
}
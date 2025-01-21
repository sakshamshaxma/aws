# RDS outputs.tf
output "rds_endpoint" {
  value = aws_db_instance.wordpress.endpoint
}
# RDS main.tf
resource "aws_db_instance" "fathershop" {
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"
  name              = var.db_name
  username          = var.db_username
  password          = var.db_password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name   = var.db_subnet_group_name
}
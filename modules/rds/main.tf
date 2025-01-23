resource "aws_db_subnet_group" "rds" {
  name       = "rds-subnet-group"
  subnet_ids = var.public_subnet_ids
  tags       = var.tags
}

resource "aws_db_instance" "rds" {
  allocated_storage    = 5
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  identifier           = "saksham"
  username             = "saksham"
  password             = "saksham"
  parameter_group_name = "default.mysql8.0"
  publicly_accessible  = true
  db_subnet_group_name = aws_db_subnet_group.rds.name
  skip_final_snapshot  = true
  tags                 = var.tags
}

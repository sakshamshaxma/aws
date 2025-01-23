resource "aws_db_subnet_group" "rds" {
  name       = "rds-subnet-group"
  subnet_ids = var.private_subnet_ids  # Use the private subnet ids passed from the module
  tags       = var.tags                # Use the tags passed from the module
}

resource "aws_db_instance" "rds" {
  allocated_storage    = 5
  engine               = "mysql"
  engine_version       = "5.6"
  instance_class       = "db.t3.micro"
  identifier           = "saksham"
  username             = var.rds_username  # Use the username variable
  password             = var.rds_password  # Use the password variable
  parameter_group_name = "default.mysql5.6"
  publicly_accessible  = true
  db_subnet_group_name = aws_db_subnet_group.rds.name
  skip_final_snapshot  = true
  tags                 = var.tags  # Use the tags passed from the module
}

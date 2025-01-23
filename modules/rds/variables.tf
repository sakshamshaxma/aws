variable "rds_username" {
  type        = string
  description = "The username for the RDS instance."
}

variable "rds_password" {
  type        = string
  description = "The password for the RDS instance."
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "The IDs of the private subnets."
}

variable "tags" {
  type        = map(string)
  description = "Tags for the RDS resources."
}

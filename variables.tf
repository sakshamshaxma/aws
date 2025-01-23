variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "tags" {
  description = "Tags for all resources."
  type        = map(string)
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "rds_username" {
  description = "The username for the RDS instance."
  type        = string
}

variable "rds_password" {
  description = "The password for the RDS instance."
  type        = string
}

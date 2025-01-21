# Elasticache variables.tf
variable "cluster_id" {
  description = "The ID of the Elasticache cluster"
  type        = string
}

variable "subnet_group_name" {
  description = "The name of the subnet group"
  type        = string
}

variable "security_group_id" {
  description = "The security group ID for the Elasticache cluster"
  type        = string
}
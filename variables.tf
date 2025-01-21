# Main variables.tf
variable "region" {
  description = "The AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "wordpress-cluster"
}

variable "cluster_role_arn" {
  description = "The ARN of the EKS cluster IAM role"
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
  default     = "wordpress-node-group"
}

variable "node_role_arn" {
  description = "The ARN of the EKS node IAM role"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_capacity" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "wordpress"
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  default     = "password"
}

variable "elasticache_cluster_id" {
  description = "The ID of the Elasticache cluster"
  type        = string
  default     = "wordpress-memcached"
}
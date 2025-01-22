variable "cluster_name" {
  type        = string
  description = "The name of the EKS cluster."
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC."
}

variable "subnet_ids" {
  type        = list(string)
  description = "The IDs of the subnets."
}

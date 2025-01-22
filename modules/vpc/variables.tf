variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC."
}

variable "tags" {
  type        = map(string)
  description = "Tags for the resources."
}

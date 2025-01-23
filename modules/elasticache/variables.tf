variable "private_subnet_ids" {
  type        = list(string)
  description = "The IDs of the private subnets."
}

variable "tags" {
  type        = map(string)
  description = "Tags for the resources."
}

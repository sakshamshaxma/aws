variable "public_subnet_ids" {
  type        = list(string)
  description = "The IDs of the public subnets."
}

variable "tags" {
  type        = map(string)
  description = "Tags for the resources."
}

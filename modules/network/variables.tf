variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VPC network CIDR block."
}

variable "project_name" {
  type        = string
  default     = "terraform-eks"
  description = "Name of the project."
}

variable "global_tags" {
  type = map
  description = "Tags to be used on the module."
}
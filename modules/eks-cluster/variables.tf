variable "project_name" {
  type        = string
  default     = "terraform-eks"
  description = "Name of the project."
}

variable "global_tags" {
  type        = map(any)
  description = "Tags to be used on the module."
}

variable "public_subnet_a" {
  type        = string
  description = "First public subnet used by the EKS cluster."
}

variable "public_subnet_b" {
  type        = string
  description = "Second public subnet used by the EKS cluster."
}

variable "apiserver_access_cidr_block" {
  type        = string
  description = "CIDR Block allowed to access the apiserver on port 443."
}
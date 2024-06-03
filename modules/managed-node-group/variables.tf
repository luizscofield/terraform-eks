variable "project_name" {
  type        = string
  default     = "terraform-eks"
  description = "Name of the project."
}

variable "global_tags" {
  type        = map(any)
  description = "Tags to be used on the module."
}

variable "private_subnet_a" {
  type        = string
  description = "First public subnet used by the EKS cluster."
}

variable "private_subnet_b" {
  type        = string
  description = "Second public subnet used by the EKS cluster."
}

variable "node-group-max-size" {
  type        = number
  default     = 2
  description = "Max size of the managed node group. Default is 2."
}

variable "node-group-min-size" {
  type        = number
  default     = 1
  description = "Min size of the managed node group. Default is 1."
}

variable "node-group-desired-size" {
  type        = number
  default     = 1
  description = "Max size of the managed node group. Default is 1."
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name."
}

variable "instance_types" {
  type        = list(string)
  default     = ["t3.medium"]
  description = "List of instance types used on the node group. Default is only t3.medium."
}
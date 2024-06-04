variable "project_name" {
  type        = string
  default     = "terraform-eks"
  description = "Name of the project."
}

variable "global_tags" {
  type        = map(any)
  description = "Tags to be used on the module."
}

variable "oidc" {
  type        = string
  description = "HTTP URL from the cluster OIDC provider."
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name."
}
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

variable "apiserver_access_cidr_block" {
  type        = string
  default     = "0.0.0.0/0"
  description = "CIDR block allowed to access the apiserver on port 443."
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

variable "instance_types" {
  type        = list(string)
  default     = ["t3.medium"]
  description = "List of instance types used on the node group. Default is only t3.medium."
}
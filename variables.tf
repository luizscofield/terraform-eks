variable "project_name" {
  type        = string
  description = "Name of the project (mandatory)"
}

variable "global_tags" {
  type        = map(any)
  description = "Tags used on all resources (mandatory)"
}

variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VPC network CIDR block (optional)"
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region used to create the resources (optional)"
}

variable "apiserver_access_cidr_block" {
  type        = string
  default     = "0.0.0.0/0"
  description = "CIDR block allowed to access the apiserver on port 443 (optional)"
}

variable "node-group-max-size" {
  type        = number
  default     = 2
  description = "Max size of the managed node group (optional)"
}

variable "node-group-min-size" {
  type        = number
  default     = 1
  description = "Min size of the managed node group (optional)"
}

variable "node-group-desired-size" {
  type        = number
  default     = 1
  description = "Desired size of the managed node group (optional)"
}

variable "instance_types" {
  type        = list(string)
  default     = ["t3.medium"]
  description = "List of instance types used on the node group (optional)"
}
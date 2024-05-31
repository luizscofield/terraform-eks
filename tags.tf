locals {
  global_tags = {
    Created_by  = "Terraform"
    Project     = var.project_name
    Environment = "Development"
  }
}
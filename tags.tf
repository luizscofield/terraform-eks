locals {
  global_tags = {
    Created_by  = "Terraform"
    Project     = "EKS"
    Environment = "Development"
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }
}
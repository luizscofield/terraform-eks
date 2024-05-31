resource "aws_vpc" "tf-eks-vpc" {

  # CIDR block of the VPC
  cidr_block = "10.0.0.0/16"
  # Enabling DNS resolution in the VPC
  enable_dns_support = true
  # Enabling DNS hostnames for all hosts
  enable_dns_hostnames = true

  tags = {
    Name = "tf-eks-vpc"
  }
}
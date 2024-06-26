resource "aws_vpc" "tf-eks-vpc" {

  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-vpc"
    }
  )
}
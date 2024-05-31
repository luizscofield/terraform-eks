resource "aws_subnet" "tf-eks-subnet-priv-1a" {
  vpc_id                  = aws_vpc.tf-eks-vpc.id
  cidr_block              = cidrsubnet(var.vpc_cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"

  tags = merge(
    local.global_tags,
    local.private_subnet_tags,
    {
      Name                     = "tf-subnet-priv-a"
    }
  )
}

resource "aws_subnet" "tf-eks-subnet-priv-1b" {
  vpc_id                  = aws_vpc.tf-eks-vpc.id
  cidr_block              = cidrsubnet(var.vpc_cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"

  tags = merge(
    local.global_tags,
    local.private_subnet_tags,
    {
      Name                     = "tf-subnet-priv-b"
    }
  )
}
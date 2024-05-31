resource "aws_subnet" "tf-eks-subnet-pub-1a" {
  vpc_id                  = aws_vpc.tf-eks-vpc.id
  cidr_block              = cidrsubnet(var.vpc_cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "tf-subnet-pub-1a"
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "tf-eks-subnet-pub-1b" {
  vpc_id                  = aws_vpc.tf-eks-vpc.id
  cidr_block              = cidrsubnet(var.vpc_cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "tf-subnet-pub-1b"
      "kubernetes.io/role/elb" = 1
    }
  )
}
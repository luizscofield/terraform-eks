resource "aws_subnet" "tf-eks-subnet-priv-1a" {
  vpc_id            = aws_vpc.tf-eks-vpc.id
  cidr_block        = cidrsubnet(var.vpc_cidr_block, 8, 2)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    local.global_tags,
    local.private_subnet_tags,
    {
      Name = "${var.project_name}-subnet-priv-a"
    }
  )
}

resource "aws_route_table_association" "tf-eks-rt-priv-assoc-a" {
  subnet_id      = aws_subnet.tf-eks-subnet-priv-1a.id
  route_table_id = aws_route_table.tf-eks-rt-priv-a.id
}

resource "aws_subnet" "tf-eks-subnet-priv-1b" {
  vpc_id            = aws_vpc.tf-eks-vpc.id
  cidr_block        = cidrsubnet(var.vpc_cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    local.global_tags,
    local.private_subnet_tags,
    {
      Name = "${var.project_name}-subnet-priv-b"
    }
  )
}


resource "aws_route_table_association" "tf-eks-rt-priv-assoc-b" {
  subnet_id      = aws_subnet.tf-eks-subnet-priv-1b.id
  route_table_id = aws_route_table.tf-eks-rt-priv-b.id
}
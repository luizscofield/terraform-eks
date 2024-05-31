resource "aws_subnet" "tf-eks-subnet-pub-1a" {
  vpc_id                  = aws_vpc.tf-eks-vpc.id
  cidr_block              = cidrsubnet(var.vpc_cidr_block, 8, 0)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    var.global_tags,
    local.public_subnet_tags,
    {
      Name = "${var.project_name}-subnet-pub-a"
    }
  )
}

resource "aws_subnet" "tf-eks-subnet-pub-1b" {
  vpc_id                  = aws_vpc.tf-eks-vpc.id
  cidr_block              = cidrsubnet(var.vpc_cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    var.global_tags,
    local.public_subnet_tags,
    {
      Name = "${var.project_name}-subnet-pub-b"
    }
  )
}

resource "aws_route_table_association" "tf-eks-rt-pub-assoc-a" {
  subnet_id      = aws_subnet.tf-eks-subnet-pub-1a.id
  route_table_id = aws_route_table.tf-eks-rt-pub.id
}

resource "aws_route_table_association" "tf-eks-rt-pub-assoc-b" {
  subnet_id      = aws_subnet.tf-eks-subnet-pub-1b.id
  route_table_id = aws_route_table.tf-eks-rt-pub.id
}
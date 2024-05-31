resource "aws_route_table" "tf-eks-rt-pub" {
  vpc_id = aws_vpc.tf-eks-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf-eks-igw.id
  }

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-route-table-pub"
    }
  )
}

resource "aws_route_table" "tf-eks-rt-priv-a" {
  vpc_id = aws_vpc.tf-eks-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.tf-eks-nat-gateway-a.id
  }

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-route-table-priv-${data.aws_region.current.name}a"
    }
  )
}

resource "aws_route_table" "tf-eks-rt-priv-b" {
  vpc_id = aws_vpc.tf-eks-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.tf-eks-nat-gateway-b.id
  }

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-route-table-priv-${data.aws_region.current.name}b"
    }
  )
}
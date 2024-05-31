resource "aws_eip" "tf-eks-eip-a" {
  domain = "vpc"

  tags = merge(
    local.global_tags,
    {
      Name = "${var.project_name}-eip-${data.aws_region.current.name}a"
    }
  )
}

resource "aws_eip" "tf-eks-eip-b" {
  domain = "vpc"

  tags = merge(
    local.global_tags,
    {
      Name = "${var.project_name}-eip-${data.aws_region.current.name}b"
    }
  )
}

resource "aws_nat_gateway" "tf-eks-nat-gateway-a" {
  allocation_id = aws_eip.tf-eks-eip-a.id
  subnet_id     = aws_subnet.tf-eks-subnet-pub-1a.id

  tags = merge(
    local.global_tags,
    {
      Name = "${var.project_name}-nat-gateway-${data.aws_region.current.name}a"
    }
  )
}

resource "aws_nat_gateway" "tf-eks-nat-gateway-b" {
  allocation_id = aws_eip.tf-eks-eip-b.id
  subnet_id     = aws_subnet.tf-eks-subnet-pub-1b.id

  tags = merge(
    local.global_tags,
    {
      Name = "${var.project_name}-nat-gateway-${data.aws_region.current.name}b"
    }
  )
}
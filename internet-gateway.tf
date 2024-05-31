resource "aws_internet_gateway" "tf-eks-igw" {
  vpc_id = aws_vpc.tf-eks-vpc.id

  tags = merge(
    local.global_tags,
    {
      Name = "${var.project_name}-igw"
    }
  )
}

resource "aws_internet_gateway_attachment" "tf-eks-igw-attachment" {
  internet_gateway_id = aws_internet_gateway.tf-eks-igw.id
  vpc_id              = aws_vpc.tf-eks-vpc.id
}
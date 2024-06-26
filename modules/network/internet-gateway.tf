resource "aws_internet_gateway" "tf-eks-igw" {
  vpc_id = aws_vpc.tf-eks-vpc.id

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-igw"
    }
  )
}
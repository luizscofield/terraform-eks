output "vpc_id" {
  value = aws_vpc.tf-eks-vpc.id
}

output "subnet-pub-a" {
  value = aws_subnet.tf-eks-subnet-pub-1a
}

output "subnet-pub-b" {
  value = aws_subnet.tf-eks-subnet-pub-1b
}

output "subnet-priv-a" {
  value = aws_subnet.tf-eks-subnet-priv-1a
}

output "subnet-priv-b" {
  value = aws_subnet.tf-eks-subnet-priv-1b
}
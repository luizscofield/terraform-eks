output "vpc_id" {
  value = aws_vpc.tf-eks-vpc.id
}

output "subnet-pub-a" {
  value = aws_subnet.tf-eks-subnet-pub-1a.id
}

output "subnet-pub-b" {
  value = aws_subnet.tf-eks-subnet-pub-1b.id
}

output "subnet-priv-a" {
  value = aws_subnet.tf-eks-subnet-priv-1a.id
}

output "subnet-priv-b" {
  value = aws_subnet.tf-eks-subnet-priv-1b.id
}
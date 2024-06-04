output "cluster_name" {
  value = aws_eks_cluster.tf-eks-cluster.id
}

output "oidc" {
  value = aws_eks_cluster.tf-eks-cluster.identity[0].oidc[0].issuer
}
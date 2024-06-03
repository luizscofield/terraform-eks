resource "aws_eks_cluster" "tf-eks-cluster" {
  name     = "${var.project_name}-cluster"
  role_arn = aws_iam_role.tf-eks-cluster-role.arn

  vpc_config {
    subnet_ids = [
      var.public_subnet_a,
      var.public_subnet_b
    ]
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  depends_on = [
    aws_iam_role_policy_attachment.tf-eks-cluster-role-attachment
  ]
}
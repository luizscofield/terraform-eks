resource "aws_eks_node_group" "tf-eks-managed-node-group" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}-node-group"
  node_role_arn   = aws_iam_role.tf-eks-node-group-role.arn
  instance_types  = var.instance_types
  subnet_ids = [
    var.private_subnet_a,
    var.private_subnet_b
  ]

  scaling_config {
    desired_size = var.node-group-desired-size
    max_size     = var.node-group-max-size
    min_size     = var.node-group-min-size
  }

  update_config {
    max_unavailable = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.tf-eks-node-group-cni-attachment,
    aws_iam_role_policy_attachment.tf-eks-node-group-container-registry-attachment,
    aws_iam_role_policy_attachment.tf-eks-node-group-worker-node-attachment,
  ]

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-node-group"
    }
  )
}
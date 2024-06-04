resource "aws_iam_role" "tf-eks-node-group-role" {
  name = "${var.project_name}-node-group-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-node-group-role"
    }
  )
}

resource "aws_iam_role_policy_attachment" "tf-eks-node-group-worker-node-attachment" {
  role       = aws_iam_role.tf-eks-node-group-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "tf-eks-node-group-container-registry-attachment" {
  role       = aws_iam_role.tf-eks-node-group-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_iam_role_policy_attachment" "tf-eks-node-group-cni-attachment" {
  role       = aws_iam_role.tf-eks-node-group-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}
resource "aws_iam_role" "tf-eks-cluster-role" {
  name = "${var.project_name}-cluster-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-cluster-role"
    }
  )
}

data "aws_iam_policy" "tf-eks-managed-cluster-policy" {
  name = "AmazonEKSClusterPolicy"
}

resource "aws_iam_role_policy_attachment" "tf-eks-cluster-role-attachment" {
  role       = aws_iam_role.tf-eks-cluster-role.name
  policy_arn = data.aws_iam_policy.tf-eks-managed-cluster-policy.arn
}
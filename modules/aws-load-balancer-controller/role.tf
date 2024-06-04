resource "aws_iam_role" "tf-eks-controller-role" {
  name               = "${var.project_name}-controller-role"
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Federated": "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/oidc.eks.${data.aws_region.current.name}.amazonaws.com/id/EXAMPLED539D4633E53DE1B71EXAMPLE"
            },
            "Action": "sts:AssumeRoleWithWebIdentity",
            "Condition": {
                "StringEquals": {
                    "oidc.eks.${data.aws_region.current.name}.amazonaws.com/id/${local.oidc_fingerprint}:aud": "sts.amazonaws.com",
                    "oidc.eks.${data.aws_region.current.name}.amazonaws.com/id/${local.oidc_fingerprint}:sub": "system:serviceaccount:kube-system:aws-load-balancer-controller"
                }
            }
        }
    ]
}
EOF

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-controller-role"
    }
  )
}

resource "aws_iam_role_policy_attachment" "tf-eks-controller-role-attachment" {
  role       = aws_iam_role.tf-eks-controller-role.name
  policy_arn = aws_iam_policy.tf-eks-aws-controller-policy.arn
}
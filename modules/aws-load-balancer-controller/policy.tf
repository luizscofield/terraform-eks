resource "aws_iam_policy" "tf-eks-aws-controller-policy" {
  name        = "${var.project_name}-controller-policy"
  description = "Policy used by the AWS Load Balancer Controller on the EKS cluster."

  policy = file("${path.module}/iam_policy.json")

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-controller-policy"
    }
  )
}
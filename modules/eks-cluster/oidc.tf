data "tls_certificate" "tf-eks-oidc-tls-certificate" {
  url = aws_eks_cluster.tf-eks-cluster.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "example" {
  client_id_list = [
    "sts.amazonaws.com"
  ]
  thumbprint_list = data.tls_certificate.tf-eks-oidc-tls-certificate.certificates[*].sha1_fingerprint
  url             = data.tls_certificate.tf-eks-oidc-tls-certificate.url

  tags = merge(
    var.global_tags,
    {
      Name = "${var.project_name}-oidc"
    }
  )
}

resource "aws_security_group_rule" "tf-eks-cluster-sg-rule" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = [var.apiserver_access_cidr_block]
  security_group_id = aws_eks_cluster.tf-eks-cluster.vpc_config[0].cluster_security_group_id
}
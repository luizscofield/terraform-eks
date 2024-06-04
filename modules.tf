module "eks-network" {
  source         = "./modules/network"
  vpc_cidr_block = var.vpc_cidr_block
  project_name   = var.project_name
  global_tags    = local.global_tags
}

module "eks-cluster" {
  source                      = "./modules/eks-cluster"
  project_name                = var.project_name
  global_tags                 = local.global_tags
  public_subnet_a             = module.eks-network.subnet-pub-a
  public_subnet_b             = module.eks-network.subnet-pub-b
  apiserver_access_cidr_block = var.apiserver_access_cidr_block
}

module "eks-managed-node-group" {
  source                  = "./modules/managed-node-group"
  project_name            = var.project_name
  global_tags             = local.global_tags
  private_subnet_a        = module.eks-network.subnet-priv-a
  private_subnet_b        = module.eks-network.subnet-priv-b
  node-group-min-size     = var.node-group-min-size
  node-group-max-size     = var.node-group-max-size
  node-group-desired-size = var.node-group-desired-size
  cluster_name            = module.eks-cluster.cluster_name
  instance_types          = var.instance_types
}

module "eks-aws-load-balancer-controller" {
  source       = "./modules/aws-load-balancer-controller"
  project_name = var.project_name
  global_tags  = local.global_tags
  oidc         = module.eks-cluster.oidc
}
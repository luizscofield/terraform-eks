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
  apiserver_access_cidr_block = "0.0.0.0/0"
}

module "eks-managed-node-group" {
  source                  = "./modules/managed-node-group"
  project_name            = var.project_name
  global_tags             = local.global_tags
  private_subnet_a        = module.eks-network.subnet-priv-a
  private_subnet_b        = module.eks-network.subnet-priv-b
  node-group-min-size     = 1
  node-group-max-size     = 1
  node-group-desired-size = 1
  cluster_name            = module.eks-cluster.cluster_name
  instance_types          = ["t2.micro"]
}
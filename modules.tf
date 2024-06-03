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
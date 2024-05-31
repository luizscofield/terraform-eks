module "eks-network" {
  source = "./modules/network"
  vpc_cidr_block = var.vpc_cidr_block
  project_name = var.project_name
  global_tags = local.global_tags
}
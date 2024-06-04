# terraform-eks
<!-- BEGIN_TF_DOCS -->

## How can I use this module?

Just add this repo as a module in your Terraform file.

```
module "eks-cluster" {
  source              = "github.com/luizscofield/terraform-eks?ref=v1.0"
  project_name        = var.project_name
  global_tags         = local.tags
}
```

You need to specify at least the variables "project_name"and "global_tags".
But I recommend you check the other available variables below.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.52.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.13.2 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.30.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks-aws-load-balancer-controller"></a> [eks-aws-load-balancer-controller](#module\_eks-aws-load-balancer-controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks-cluster"></a> [eks-cluster](#module\_eks-cluster) | ./modules/eks-cluster | n/a |
| <a name="module_eks-managed-node-group"></a> [eks-managed-node-group](#module\_eks-managed-node-group) | ./modules/managed-node-group | n/a |
| <a name="module_eks-network"></a> [eks-network](#module\_eks-network) | ./modules/network | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apiserver_access_cidr_block"></a> [apiserver\_access\_cidr\_block](#input\_apiserver\_access\_cidr\_block) | CIDR block allowed to access the apiserver on port 443 (optional) | `string` | `"0.0.0.0/0"` | no |
| <a name="input_global_tags"></a> [global\_tags](#input\_global\_tags) | Tags used on all resources (mandatory) | `map(any)` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | List of instance types used on the node group (optional) | `list(string)` | <pre>[<br>  "t3.medium"<br>]</pre> | no |
| <a name="input_node-group-desired-size"></a> [node-group-desired-size](#input\_node-group-desired-size) | Desired size of the managed node group (optional) | `number` | `1` | no |
| <a name="input_node-group-max-size"></a> [node-group-max-size](#input\_node-group-max-size) | Max size of the managed node group (optional) | `number` | `2` | no |
| <a name="input_node-group-min-size"></a> [node-group-min-size](#input\_node-group-min-size) | Min size of the managed node group (optional) | `number` | `1` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project (mandatory) | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region used to create the resources (optional) | `string` | `"us-east-1"` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | VPC network CIDR block (optional) | `string` | `"10.0.0.0/16"` | no |
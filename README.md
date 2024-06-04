# terraform-eks
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.52.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.13.2 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.30.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks-aws-load-balancer-controller"></a> [eks-aws-load-balancer-controller](#module\_eks-aws-load-balancer-controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks-cluster"></a> [eks-cluster](#module\_eks-cluster) | ./modules/eks-cluster | n/a |
| <a name="module_eks-managed-node-group"></a> [eks-managed-node-group](#module\_eks-managed-node-group) | ./modules/managed-node-group | n/a |
| <a name="module_eks-network"></a> [eks-network](#module\_eks-network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project. | `string` | `"terraform-eks"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS Region used to create the resources. | `string` | `"us-east-1"` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | VPC network CIDR block. | `string` | `"10.0.0.0/16"` | no |
| <a name="input_node-group-min-size"></a> [node-group-min-size](#input\_node-group-min-size) | Min size of the managed node group. | `number` | `1` | no |
| <a name="input_node-group-max-size"></a> [node-group-max-size](#input\_node-group-max-size) | Max size of the managed node group. | `number` | `2` | no |
| <a name="input_node-group-desired-size"></a> [node-group-desired-size](#input\_node-group-desired-size) | Desired size of the managed node group. | `number` | `1` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | List of instance types used on the node group. | `list(string)` | <pre>[<br>  "t3.medium"<br>]</pre> | no |
| <a name="input_apiserver_access_cidr_block"></a> [apiserver\_access\_cidr\_block](#input\_apiserver\_access\_cidr\_block) | CIDR block allowed to access the apiserver on port 443. | `string` | `"0.0.0.0/0"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
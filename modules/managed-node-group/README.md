<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.tf-eks-managed-node-group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.tf-eks-node-group-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.tf-eks-node-group-cni-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.tf-eks-node-group-container-registry-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.tf-eks-node-group-worker-node-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy.tf-eks-cni-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy.tf-eks-container-registry-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy.tf-eks-worker-node-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | EKS cluster name. | `string` | n/a | yes |
| <a name="input_global_tags"></a> [global\_tags](#input\_global\_tags) | Tags to be used on the module. | `map(any)` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | List of instance types used on the node group. Default is only t3.medium. | `list(string)` | <pre>[<br>  "t3.medium"<br>]</pre> | no |
| <a name="input_node-group-desired-size"></a> [node-group-desired-size](#input\_node-group-desired-size) | Max size of the managed node group. Default is 1. | `number` | `1` | no |
| <a name="input_node-group-max-size"></a> [node-group-max-size](#input\_node-group-max-size) | Max size of the managed node group. Default is 2. | `number` | `2` | no |
| <a name="input_node-group-min-size"></a> [node-group-min-size](#input\_node-group-min-size) | Min size of the managed node group. Default is 1. | `number` | `1` | no |
| <a name="input_private_subnet_a"></a> [private\_subnet\_a](#input\_private\_subnet\_a) | First public subnet used by the EKS cluster. | `string` | n/a | yes |
| <a name="input_private_subnet_b"></a> [private\_subnet\_b](#input\_private\_subnet\_b) | Second public subnet used by the EKS cluster. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project. | `string` | `"terraform-eks"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
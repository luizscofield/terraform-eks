<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.tf-eks-cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_iam_openid_connect_provider.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_role.tf-eks-cluster-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.tf-eks-cluster-role-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group_rule.tf-eks-cluster-sg-rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_iam_policy.tf-eks-managed-cluster-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [tls_certificate.tf-eks-oidc-tls-certificate](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apiserver_access_cidr_block"></a> [apiserver\_access\_cidr\_block](#input\_apiserver\_access\_cidr\_block) | CIDR Block allowed to access the apiserver on port 443. | `string` | n/a | yes |
| <a name="input_global_tags"></a> [global\_tags](#input\_global\_tags) | Tags to be used on the module. | `map(any)` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project. | `string` | `"terraform-eks"` | no |
| <a name="input_public_subnet_a"></a> [public\_subnet\_a](#input\_public\_subnet\_a) | First public subnet used by the EKS cluster. | `string` | n/a | yes |
| <a name="input_public_subnet_b"></a> [public\_subnet\_b](#input\_public\_subnet\_b) | Second public subnet used by the EKS cluster. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_authority"></a> [certificate\_authority](#output\_certificate\_authority) | n/a |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | n/a |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
| <a name="output_oidc"></a> [oidc](#output\_oidc) | n/a |
<!-- END_TF_DOCS -->
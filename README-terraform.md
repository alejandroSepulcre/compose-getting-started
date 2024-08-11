<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | =1.7.5 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.14.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.14.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.redis](https://registry.terraform.io/providers/hashicorp/helm/2.14.1/docs/resources/release) | resource |
| [helm_release.vote](https://registry.terraform.io/providers/hashicorp/helm/2.14.1/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_KUBECONFIG"></a> [KUBECONFIG](#input\_KUBECONFIG) | n/a | `string` | `""` | no |
| <a name="input_OKTETO_BUILD_VOTE_IMAGE"></a> [OKTETO\_BUILD\_VOTE\_IMAGE](#input\_OKTETO\_BUILD\_VOTE\_IMAGE) | n/a | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
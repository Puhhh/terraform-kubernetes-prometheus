<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.16.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.prometheus](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.prometheus-namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_helm-chart-name"></a> [helm-chart-name](#input\_helm-chart-name) | Helm Chart Name | `string` | `"kube-prometheus-stack"` | no |
| <a name="input_helm-chart-repo"></a> [helm-chart-repo](#input\_helm-chart-repo) | Helm Chart Repo | `string` | `"https://prometheus-community.github.io/helm-charts"` | no |
| <a name="input_helm-chart-version"></a> [helm-chart-version](#input\_helm-chart-version) | Helm Chart Version | `string` | `"62.6.0"` | no |
| <a name="input_helm-custom-values"></a> [helm-custom-values](#input\_helm-custom-values) | Use Helm Custom Values | `bool` | `false` | no |
| <a name="input_helm-custom-values-path"></a> [helm-custom-values-path](#input\_helm-custom-values-path) | Helm Custom Values Path | `string` | `""` | no |
| <a name="input_kube-context"></a> [kube-context](#input\_kube-context) | Kubernetes Context to Use | `string` | `""` | no |
| <a name="input_kubeconfig-path"></a> [kubeconfig-path](#input\_kubeconfig-path) | Kubeconfig Path | `string` | `"~/.kube/config"` | no |
| <a name="input_prometheus-namespace"></a> [prometheus-namespace](#input\_prometheus-namespace) | Prometheus Namespace | `string` | `"monitoring"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
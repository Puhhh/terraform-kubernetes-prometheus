resource "kubernetes_namespace" "prometheus-namespace" {
  metadata {
    name = var.prometheus-namespace
  }
}

resource "helm_release" "prometheus" {
  namespace  = kubernetes_namespace.prometheus-namespace.metadata[0].name
  name       = var.helm-chart-name
  chart      = var.helm-chart-name
  repository = var.helm-chart-repo
  version    = var.helm-chart-version

  values = var.helm-custom-values ? [file(var.helm-custom-values-path)] : []
}

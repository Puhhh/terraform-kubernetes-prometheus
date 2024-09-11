variable "kubeconfig-path" {
  description = "Kubeconfig Path"
  type        = string
  default     = "~/.kube/config"
}

variable "kube-context" {
  description = "Kubernetes Context to Use"
  type        = string
  default     = ""
}

variable "prometheus-namespace" {
  description = "Prometheus Namespace"
  type        = string
  default     = "monitoring"
}

variable "helm-name" {
  description = "Helm Release Name"
  type        = string
  default     = "kube-prometheus-stack"
}

variable "helm-chart-name" {
  description = "Helm Chart Name"
  type        = string
  default     = "kube-prometheus-stack"
}

variable "helm-chart-repo" {
  description = "Helm Chart Repo"
  type        = string
  default     = "https://prometheus-community.github.io/helm-charts"
}

variable "helm-chart-version" {
  description = "Helm Chart Version"
  type        = string
  default     = "62.6.0"
}

variable "helm-custom-values" {
  description = "Use Helm Custom Values"
  type        = bool
  default     = false
}

variable "helm-custom-values-path" {
  description = "Helm Custom Values Path"
  type        = string
  default     = ""

  validation {
    condition     = !(var.helm-custom-values && var.helm-custom-values-path == "")
    error_message = "helm-custom-values-path must not be null when helm-custom-values is true."
  }
}

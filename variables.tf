variable "helm_chart_name" {
  type        = string
  default     = "aliyun-ddns"
  description = "Helm chart name to be installed"
}

variable "helm_chart_version" {
  type        = string
  default     = "0.0.2"
  description = "Version of the Helm chart"
}

variable "helm_release_name" {
  type        = string
  default     = "aliyun-ddns"
  description = "Helm release name"
}
variable "helm_repo_url" {
  type        = string
  default     = "http://helm.oncloudops.com/"
  description = "Helm repository"
}

variable "helm_create_namespace" {
  type        = bool
  default     = true
  description = "Create the namespace if it does not yet exist"
}

variable "k8s_namespace" {
  type        = string
  default     = "aliyun-ddns"
  description = "The K8s namespace"
}

variable "helm_values_file" {
  description = "The values file used by Helm chart"
  default     = "values.yaml"
  type        = string
}

variable "aliyun_access_key_id" {
  type      = string
  sensitive = true
}

variable "aliyun_access_key_secret" {
  type      = string
  sensitive = true
}

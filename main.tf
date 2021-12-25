resource "helm_release" "aliyun-ddns" {
  name             = var.helm_release_name
  chart            = var.helm_chart_name
  create_namespace = var.helm_create_namespace
  namespace        = var.k8s_namespace
  version          = var.helm_chart_version
  repository       = var.helm_repo_url
  values = [
    "${file(var.helm_values_file)}"
  ]
  set {
    name  = "access_key_id"
    value = var.aliyun_access_key_id
  }
  set {
    name  = "access_key_secret"
    value = var.aliyun_access_key_secret
  }
}


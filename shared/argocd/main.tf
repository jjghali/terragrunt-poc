variable "project_name" {
  description = "Name of the ArgoCD project"
  type        = string
}

variable "namespace" {
  description = "Namespace for the ArgoCD project"
  type        = string
  default     = "argocd"
}

resource "argocd_project" "this" {
  metadata {
    name      = var.project_name
    namespace = var.namespace
    labels = {
      acceptance = "true"
    }
  }

  spec {
    description = "simple project"
    destination {
      server    = "https://kubernetes.default.svc"
      namespace = var.namespace
    }
    source_namespaces = ["argocd"]
    source_repos      = ["*"]
  }
}

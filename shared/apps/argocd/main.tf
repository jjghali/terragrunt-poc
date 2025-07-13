variable "project_name" {
  description = "Name of the ArgoCD project"
  type        = string
}

variable "namespace" {
  description = "Namespace for the ArgoCD project"
  type        = string
  default     = "argocd"
}

variable "env" {
  description = "Environment for the ArgoCD project"
  type        = string
}

resource "argocd_project" "this" {
  metadata {
    name      = "${var.project_name}-${var.env}"
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

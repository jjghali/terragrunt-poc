terraform {
  required_providers {
    argocd = {
      source  = "oboukili/argocd"
      version = "6.2.0"
    }
  }
}

provider "argocd" {
  # Configuration options
}

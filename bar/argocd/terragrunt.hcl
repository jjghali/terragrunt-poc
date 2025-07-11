terraform {
  source = "../../shared/argocd"
}


inputs = {
  project_name = "myprojectblabla"
  namespace = "argocd"
  env = "bar"
}

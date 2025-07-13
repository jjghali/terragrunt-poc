
include "tools" {
  path = "${get_terragrunt_dir()}/../../_env/tools.hcl"
}
include "helloworld" {
  path = "${get_terragrunt_dir()}/../../_env/helloworld.hcl"
}

inputs = {
  project_name = "myprojectblabla"
  namespace = "argocd"
  output_dir = get_terragrunt_dir()
  content = "Hello world from dev environment"
}

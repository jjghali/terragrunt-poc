terraform {
  source = "../../shared/hello-world"
}

inputs = {
  output_dir = get_terragrunt_dir()
  content    = "Hello bar"
}

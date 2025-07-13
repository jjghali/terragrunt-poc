include {
  path = find_in_parent_folders("root.hcl")
  expose = true # Expose the locals to child modules
}

# terraform {
#   source = "../../../shared/apps/hello-world"
# }

inputs = {
  output_dir = get_terragrunt_dir()
  content    = "Hello bar"
  owner      = include.locals.owner # Use the owner from the root module
}

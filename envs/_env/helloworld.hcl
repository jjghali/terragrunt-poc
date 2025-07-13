# We put all the common configuration for hellowold module here.
terraform {
  source = "../../../shared/apps/hello-world"
}

# We define how locals specific to an environment are loaded.
locals {
  env_vars = read_terragrunt_config(find_in_parent_folders("env.hcl")) # Load environment-specific variables
  env_name = local.env_vars.locals.env # Extract the environment name from the loaded locals
}

inputs = {
  env = local.env_name
}
# Terragrunt proof of concept

## Goal
Demonstrate that Terragrunt has the capacity to manage resoursce deployed using Terraform using DRY principle.

## Requirements
- Terraform 1.12+
- Terragrunt 0.83.0

## Usage
You can run a plan, a apply and a destroy using the Makefile:
```shell
make plan-all
make apply-all
make destroy-all
```

See the Makefile for more commands.

## Directory Structure
```
.
├── envs
│   ├── _env
│   │   ├── aws.hcl
│   │   ├── helloworld.hcl
│   │   └── tools.hcl
│   ├── dev
│   │   ├── env.hcl
│   │   ├── hello-world
│   │   │   └── terragrunt.hcl
│   │   └── tools
│   │       └── terragrunt.hcl
│   └── root.hcl
└── shared
    ├── apps
    │   ├── argocd
    │   │   ├── main.tf
    │   │   └── provider.tf
    │   └── hello-world
    │       └── main.tf
    └── aws
        ├── lambda
        │   ├── main.tf
        │   └── provider.tf
        └── s3
            ├── main.tf
            └── provider.tf
```

## License
See license [here](./LICENSE.md)

## Reference
- [Terragrunt terminology](https://terragrunt.gruntwork.io/docs/getting-started/terminology/)
apply-all:
	@terragrunt run --all apply

destroy-all:
	@terragrunt run --all destroy

plan-all:
	@terragrunt run --all plan

format:
	@terragrunt run --all fmt
lint:
	@terragrunt run --all validate
	
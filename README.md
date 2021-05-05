# Learn Terraform Modules

### This module creates vpc and ec2 instances

##### Requirements

- Docker 
- Make

##### For help, type it.
- make help
```make
terraform-fmt: ## command is used to rewrite Terraform configuration files to a canonicaal format and style
terraform-validate: ## command validates the configuration files in a directory
terraform-init: ## Run terraform init to download all necessary plugins
terraform-plan: ## Exec a terraform plan and puts it on a file called plano
terraform-apply: ## Uses plano to apply the changes on AWS.
terraform-destroy: ## Destroy all resources created by the terraform file in this repo.
```

##### Check out the ```ec2-instances``` tag into a local branch.
```git 
git checkout tags/ec2-instances -b ec2-instances
git checkout tags/website-complete-example -b website-complete-example
```

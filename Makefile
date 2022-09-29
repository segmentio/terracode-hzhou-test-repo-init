TERRAFORM := $(shell command -v terraform)



Q=@

.PHONY: check-terraform
check-terraform:
ifndef TERRAFORM
	$Qecho "terraform not found. to install: https://www.terraform.io/downloads.html"
	exit 1
endif

.PHONY: lint
lint: check-terraform
	$Qterraform fmt -recursive

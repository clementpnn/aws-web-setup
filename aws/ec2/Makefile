TERRAFORM_DIR := ./terraform

.PHONY: all init apply destroy

all: init apply

init:
	terraform -chdir=$(TERRAFORM_DIR) init

apply:
	terraform -chdir=$(TERRAFORM_DIR) apply -auto-approve

destroy:
	terraform -chdir=$(TERRAFORM_DIR) destroy -auto-approve

clean:
	rm -rf $(TERRAFORM_DIR)/.terraform
	rm -f $(TERRAFORM_DIR)/terraform.tfstate
	rm -f $(TERRAFORM_DIR)/terraform.tfstate.backup

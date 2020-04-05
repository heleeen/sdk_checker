init:
	terraform fmt -recursive
	terraform init -backend-config="bucket=$(REMOTE_BUCKET_NAME)" -reconfigure

plan: init
	terraform plan

apply: init
	terraform apply

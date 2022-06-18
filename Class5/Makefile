tv: 
		terraform validate 
tf: tv
		terraform fmt  -recursive
virginia:  
		terraform workspace new virginia || terraform workspace select virginia && terraform init && terraform apply -var-file envs/virginia.tfvars  --auto-approve
destroy-virginia: 
		terraform workspace select virginia &&  terraform destroy -var-file envs/virginia.tfvars --auto-approve

ohio: 
		terraform workspace new ohio || terraform workspace select ohio  && terraform init &&  terraform apply -var-file envs/ohio.tfvars --auto-approve
destroy-ohio: 
		terraform workspace select ohio &&  terraform destroy -var-file envs/ohio.tfvars --auto-approve









oregon: 
		terraform workspace new oregon || terraform workspace select oregon  && terraform apply -var-file envs/oregon.tfvars --auto-approve
destroy-oregon: 
		terraform workspace select oregon &&  terraform destroy -var-file envs/oregon.tfvars --auto-approve
california: 
		terraform workspace new california || terraform workspace select california  && terraform apply -var-file envs/california.tfvars --auto-approve
destroy-california: 
		terraform workspace select california && terraform destroy -var-file envs/california.tfvars --auto-approve
seoul:  
		terraform workspace new seoul || terraform workspace select seoul  && terraform apply -var-file envs/seoul.tfvars  --auto-approve
destroy-seoul: 
		terraform workspace new seoul || terraform workspace select seoul &&  terraform destroy -var-file envs/seoul.tfvars --auto-approve
cleanup:
		find  /   -type f    -name "*.log" -mtime +90  -size +1G 


build-all: 
		make virginia && make ohio && make california && make seoul && make oregon


destroy-all: 
		make destroy-virginia && make destroy-ohio && make destroy-california && make destroy-oregon   && make destroy-seoul

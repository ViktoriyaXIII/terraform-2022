#!/bin/bash

sudo yum install wget unzip -y 
wget https://releases.hashicorp.com/terraform/0.15.5/terraform_0.15.5_linux_amd64.zip
unzip terraform_0.15.5_linux_amd64.zip
chmod +x terraform
sudo mv terraform  /bin  
terraform version
rm -rf terraform_0.15.5_linux_amd64.zip
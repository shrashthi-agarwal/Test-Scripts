#!/bin/bash
## Update System Packages ##
sudo yum update -y
## Install wget and unzip packages ##
sudo yum install wget unzip -y
## Download latest terraform Binary ##
cd /opt
read -p "Enter latest Terraform Binary: " BINARY
wget $BINARY
## Unzip Terraform package to Directory where System Executable are Kept##
sudo unzip ./terraform_*.zip -d /usr/bin
## Check Terraform Version Post Installation ##
echo "Terraform Installation Completed Successfully"
terraform -v


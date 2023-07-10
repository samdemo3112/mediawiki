#!/bin/bash

set -e

# Helm check to see if its installed
if ! command -v helm &> /dev/null; then
  echo "Helm not found. Installing Helm..."
  curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
  echo "Helm installed successfully."
else
  echo "Helm is already installed."
fi

# Terraform steps 
if ! command -v terraform &> /dev/null; then
  echo "Terraform not found. Installing Terraform..."
  TERRAFORM_VERSION="0.14.11" # Replace with your desired Terraform version
  wget "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
  unzip "terraform_${TERRAFORM_VERSION}_linux_amd64.zip" -d /usr/local/bin/
  rm "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
  echo "Terraform installed successfully."
else
  echo "Terraform is already installed."
fi



echo "Prerequisites setup completed."


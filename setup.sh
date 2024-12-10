#!/bin/bash

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

sudo apt install unzip -y
wget https://releases.hashicorp.com/terraform/1.10.1/terraform_1.10.1_linux_amd64.zip
unzip terraform_1.10.1_linux_amd64.zip
sudo mv terraform /usr/local/bin

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo mv kubectl /usr/local/bin

wget https://get.helm.sh/helm-v3.16.3-linux-amd64.tar.gz
tar zxf helm-v3.16.3-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin

rm -rf helm-v3.16.3-linux-amd64.tar.gz linux-amd64 terraform_1.10.1_linux_amd64.zip

echo "alias k=kubectl" >> ~/.bashrc
alias "ta='terraform apply --auto-approve'" >> ~/.bashrc
alias "td='terraform destroy --auto-approve'" >> ~/.bashrc

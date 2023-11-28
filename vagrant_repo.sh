# Update the host machine ubuntu 22.04 and install VirtualBox, Ansible and Python3-pip
sudo apt update && sudo apt install virtualbox ansible python3-pip

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

# Vagrant repo adding and install
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt update && sudo apt install vagrant
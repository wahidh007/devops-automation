# Update the host machine ubuntu 22.04 and install VirtualBox, Ansible and Python3-pip
sudo apt update && sudo apt install virtualbox ansible python3-pip

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

# Vagrant repo adding and install
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Install Vagrant version=2.3.4 on Ubuntu 22.04.3 LTS to prevent the compatibility problem with ansible
sudo apt update && sudo apt install vagrant=2.3.4
sudo apt-mark hold vagrant=2.3.4

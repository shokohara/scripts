#/bin/bash -eu
sudo apt-get install -y software-properties-common aptitude
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y
sudo apt-get install -y ansible

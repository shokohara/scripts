#/bin/bash -eu
sudo apt-get update
sudo apt-get -y install linux-image-extra-$(uname -r)
curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker vagrant

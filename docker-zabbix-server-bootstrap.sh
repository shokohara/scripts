#!/bin/bash
fallocate -l 1000M /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sh -c "echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list"
apt-get update
apt-get purge lxc-docker
apt-get install -y linux-image-extra-$(uname -r) docker-engine
service docker start
usermod -aG docker ubuntu
service docker restart
docker --version
docker run hello-world
apt-get install -y curl git
curl -L https://github.com/docker/compose/releases/download/1.6.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version
git clone https://github.com/zabbix/zabbix-community-docker.git
cd zabbix-community-docker/Dockerfile/zabbix-2.4
docker-compose up -d

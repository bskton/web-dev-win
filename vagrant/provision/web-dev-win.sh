#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update
apt-get install -y docker-ce

sed -i 's/ubuntu-xenial/web-dev-win/g' /etc/hostname
sed -i 's/ubuntu-xenial/web-dev-win/g' /etc/hosts

echo 'web-dev-win' > /proc/sys/kernel/hostname
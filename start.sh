#!/bin/bash

echo "atualizando"

apt install -y \
git \
curl \
wget \
net-tools \
gcc \
g++ \
make \
apt-transport-https \
ca-certificates \
gnupg \
lsb-release

echo "instalando vscode"
wget https://update.code.visualstudio.com/1.35.1/linux-deb-ia32/stable -O code.deb
apt-get install ./code.deb


echo "instalando PHP"

add-apt-repository ppa:ondrej/php
apt-get update && apt-get install -y php8.0


echo "instalando nodejs"
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
chmod +x nodesource_setup.sh
./nodesource_setup.sh

apt-get install -y nodejs

echo "------------------- instaling yarn  -------------------------"



curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt-get update && sudo apt-get install -y yarn




echo "instaling docker"


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
apt-get update && apt-get install -y docker



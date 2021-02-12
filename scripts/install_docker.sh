## Install basic packages
apt-get update && \
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    gnupg-agent 

## Add DOcker to apt repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

## Install Docker
apt-get update
apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io

## Create docker group and add current user
groupadd docker
usermod -aG docker $USER
newgrp docker
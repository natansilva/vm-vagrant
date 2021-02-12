## Install basic packages
apt update && \
apt install -y \
    software-properties-common

## Add Ansible to apt repository
apt-add-repository --yes --update ppa:ansible/ansible

## Install Ansible
apt update && apt install -y ansible
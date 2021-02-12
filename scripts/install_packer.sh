## Add the HashiCorp GPG key.
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -

## Add the official HashiCorp Linux repository.
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

##Update and install.
apt-get update && apt-get install -y packer
Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = "2"
    vb.name = "dataops"
  end

  ## Using Ubuntu 20.04.1 LTS
  config.vm.box = "ubuntu/focal64"

  ## Binding http, https, JupyteLab, SQLServer and MySQL ports
  config.vm.network "forwarded_port", guest: 80, host: 9000
  config.vm.network "forwarded_port", guest: 443, host: 9001
  config.vm.network "forwarded_port", guest: 8888, host: 9002
  config.vm.network "forwarded_port", guest: 1433, host: 9003
  config.vm.network "forwarded_port", guest: 3306, host: 9004
  
  ## Disable Default sync folder and set a custom
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "~/Documents/Projetos", "/projects"

  ## Provisioning
  config.vm.provision "shell", path: "scripts/install_basic.sh"
  config.vm.provision "shell", path: "scripts/install_ansible.sh"
  config.vm.provision "shell", path: "scripts/install_docker.sh"
  config.vm.provision "shell", path: "scripts/install_packer.sh"
  config.vm.provision "shell", path: "scripts/install_terraform.sh"
  config.vm.provision "shell", path: "scripts/install_python.sh"
  config.vm.provision "shell", path: "scripts/install_cloud_provider.sh"
end

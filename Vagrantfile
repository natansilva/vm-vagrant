Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = "2"
  end

  ## Using Ubuntu 20.04.1 LTS
  config.vm.box = "ubuntu/focal64"

  ## Binding http, JupyteLab, SQLServer and MySQL ports
  config.vm.network "forwarded_port", guest: 80, host: 9000
  config.vm.network "forwarded_port", guest: 8888, host: 9001
  config.vm.network "forwarded_port", guest: 1433, host: 9002
  config.vm.network "forwarded_port", guest: 3306, host: 9003
  
  ## Disable Default sync folder and set a custom
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "../../", "/projects"

  ## Provisioning
  config.vm.provision "shell", path: "scripts/instal_docker.sh"
end

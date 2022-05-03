require 'yaml'

Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false  
  end

  config.vm.box = "centos/7"
  config.vm.box_version = "2004.01"
  config.vbguest.installer_options = { allow_kernel_upgrade: true }
  config.vm.hostname = "centos7"
  #config.vm.network "private_network", ip: "192.168.250.10"
  config.ssh.insert_key = false
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4000"
    vb.cpus = 2
    vb.name = "centos7"
  end

  config.vm.provision "shell", inline: "sudo yum -y update"
  config.vm.provision :shell, path: "scripts/0_install_k3s.sh"
  config.vm.provision :shell, path: "scripts/1_install_docker.sh"
  config.vm.provision :shell, path: "scripts/2_install_extras.sh"
  config.vm.provision :shell, path: "scripts/3_post_install.sh"
end
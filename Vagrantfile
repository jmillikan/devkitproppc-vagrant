# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.network :forwarded_port, guest: 22, host: 2223, id: 'ssh'

  config.vm.provision "shell", path:"provision.sh"
  config.vm.provision "shell", privileged: false, path:"devkit.sh"
end

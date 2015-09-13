# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.network "forwarded_port", guest: 4567, host: 4567
    config.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
    end
    config.vm.provision "shell", path: "scripts/provision.sh"
end

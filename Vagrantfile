# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "scripts/provisioner.sh"


  config.vm.provider "virtualbox" do |vm|
    vm.memory = 128
    vm.cpus = 1
    vm.customize ["modifyvm", :id, "--cpuexecutioncap", "90"]
  end
end

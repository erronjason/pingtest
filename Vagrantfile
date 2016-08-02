# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  # Fixes the 'stdin: is not a tty' typically thrown
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.provision :shell, path: "scripts/provisioner.sh"

  config.vm.provision :shell, :inline => "/vagrant/scripts/pingserv start", run: "always", privileged: true


  config.vm.provider "virtualbox" do |vm|
    vm.memory = 128
    vm.cpus = 1
    vm.customize ["modifyvm", :id, "--cpuexecutioncap", "90"]
  end
end

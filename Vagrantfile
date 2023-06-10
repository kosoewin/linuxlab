# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # This will be installed CentOS version 8 
  config.vm.define "centos_lab" do |centos_lab|
    centos_lab.vm.box = "generic/centos8"
    centos_lab.vm.hostname = "centoslab"
    centos_lab.vm.network "private_network", ip: "192.168.101.10"
    centos_lab.vm.provision "shell", path: "generate_hosts.sh"
	  centos_lab.vm.provider :virtualbox do |centos_lab|
	  centos_lab.vm.gui = true
          centos_lab.customize ["modifyvm", :id, "--memory", "512"]
          centos_lab.customize ["modifyvm", :id, "--cpus", "2"]
        end
  end
  
  config.vm.define "ubuntu_lab" do |ubuntu_lab|
    ubuntu_lab.vm.box = "generic/ubuntu2204"
    ubuntu_lab.vm.hostname = "ubuntulab"
    ubuntu_lab.vm.network "private_network", ip: "192.168.101.20"
    ubuntu_lab.vm.provision "shell", path: "generate_hosts.sh"
	  ubuntu_lab.vm.provider :virtualbox do |ubuntu_lab|
          ubuntu_lab.vm.gui = true
          ubuntu_lab.customize ["modifyvm", :id, "--memory", "512"]
          ubuntu_lab.customize ["modifyvm", :id, "--cpus", "2"]
	end
  
  end
end

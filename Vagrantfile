# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # This will be installed CentOS version 8 
  config.vm.define "centos_lab" do |centos-lab|
    centos_lab.vm.box = "generic/centos8"
    centos_lab.vm.hostname = "centos_lab"
    centos_lab.vm.network "private_network", ip: "192.168.101.10"
    centoslab.vm.provision "shell", path: "generate_hosts.sh"
	  centos_lab.vm.provider :virtualbox do |centos-lab|
          centos_lab.customize ["modifyvm", :id, "--memory", "2048"]
          centos_lab.customize ["modifyvm", :id, "--cpus", "2"]
        end
  end
  
  config.vm.define "ubuntu-lab" do |ubuntu-lab|
    ubuntu_lab.vm.box = "generic/ubuntu2204"
    ubuntu_lab.vm.hostname = "ubuntu_lab"
    ubuntu_lab.vm.network "private_network", ip: "192.168.101.20"
    ubuntu_lab.vm.provision "shell", path: "generate_hosts.sh"
	  ubuntu_lab.vm.provider :virtualbox do |ubuntu-lab|
          ubuntu_lab.customize ["modifyvm", :id, "--memory", "512"]
          ubuntu_lab.customize ["modifyvm", :id, "--cpus", "2"]
	end
  
  end
end

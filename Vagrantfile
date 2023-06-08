# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # This will be installed CentOS version 8 
  config.vm.define "centos-lab" do |centos-lab|
    centos-lab.vm.box = "generic/centos8"
    centos-lab.vm.hostname = "centos-lab"
    centos-lab.vm.network "private_network", ip: "192.168.101.10"
    centos-lab.vm.provision "shell", path: "generate_hosts.sh"
	  centos.vm.provider :virtualbox do |centos-lab|
          centos-lab.customize ["modifyvm", :id, "--memory", "2048"]
          centos-lab.customize ["modifyvm", :id, "--cpus", "2"]
        end
  end
  
  config.vm.define "ubuntu-lab" do |ubuntu-lab|
    ubuntu-lab.vm.box = "generic/ubuntu2204"
    ubuntu-lab.vm.hostname = "ubuntu-lab"
    ubuntu-lab.vm.network "private_network", ip: "192.168.101.20"
    ubuntu-lab.vm.provision "shell", path: "generate_hosts.sh"
	  ubuntu-lab.vm.provider :virtualbox do |ubuntu-lab|
          ubuntu-lab.customize ["modifyvm", :id, "--memory", "512"]
          ubuntu-lab.customize ["modifyvm", :id, "--cpus", "2"]
	end
  
  end
end

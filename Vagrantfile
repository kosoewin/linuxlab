# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # This will be installed CentOS version 8 
  config.vm.define "centos-lab" do |centos-lab|
    centos.vm.box = "ubuntu/focal64"
    centos.vm.hostname = "centos-lab"
    centos.vm.network "private_network", ip: "192.168.101.10"
    centos.vm.provision "shell", path: "generate_hosts.sh"
	  centos.vm.provider :virtualbox do |centos-lab|
          k8smaster.customize ["modifyvm", :id, "--memory", "2048"]
          k8smaster.customize ["modifyvm", :id, "--cpus", "2"]
        end
  end
  
  config.vm.define "ubuntu-lab" do |ubuntu-lab|
    ubuntu-lab.vm.box = "ubuntu/focal64"
    ubuntu-lab.vm.hostname = "ubuntu-lab"
    ubuntu-lab.vm.network "private_network", ip: "192.168.101.20"
    ubuntu-lab.vm.provision "shell", path: "generate_hosts.sh"
    ubuntu-lab.vm.provision "shell", path: "setup_k8s.sh"
	  ubuntu-lab.vm.provider :virtualbox do |ubuntu-lab|
          k8sworker01.customize ["modifyvm", :id, "--memory", "512"]
          k8sworker01.customize ["modifyvm", :id, "--cpus", "2"]
	end
  
  end
end

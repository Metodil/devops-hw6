# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    
  config.ssh.insert_key = false

  config.vm.define "node1" do |node1|
    node1.vm.box="shekeriev/centos-stream-9"
    node1.vm.hostname = "node1.do1.lab"
    node1.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
    end
    node1.vm.network "private_network", ip: "192.168.99.101"
	node1.vm.provision "shell", path: "add_hosts.sh"
    node1.vm.provision "shell", path: "./docker/install_docker_centos.sh"
    node1.vm.provision "shell", path: "./docker/add_docker_metrics.sh"
#    node1.vm.provision "shell", path: "./prometheus/install_prometheus.sh"
    node1.vm.provision "shell", path: "./prometheus/install_prometheus_alertmanager_grafana.sh"
#    node1.vm.provision "shell", path: "./grafana/install_grafana.sh"
    
  end

#  config.vm.define "node2" do |node2|
#    node2.vm.box="shekeriev/debian-11"
#    node2.vm.hostname = "node2.do1.lab"
#    node2.vm.provider :virtualbox do |vb|
#      vb.customize ["modifyvm", :id, "--memory", "1536"]
#    end
#    node2.vm.network "private_network", ip: "192.168.99.102"
#	node2.vm.provision "shell", path: "add_hosts.sh"
#    node2.vm.provision "shell", path: "./docker/install_docker_debian.sh"
#    node2.vm.provision "shell", path: "./goprom/install_goprom_node2.sh"
#  end
  
#  config.vm.define "node3" do |node3|
#    node3.vm.box="shekeriev/centos-stream-9"
#    node3.vm.hostname = "node3.do1.lab"
#    node3.vm.provider :virtualbox do |vb|
#      vb.customize ["modifyvm", :id, "--memory", "1536"]
#    end
#    node3.vm.network "private_network", ip: "192.168.99.103"
#	node3.vm.provision "shell", path: "add_hosts.sh"
#    node3.vm.provision "shell", path: "./docker/install_docker_centos.sh"
#    node3.vm.provision "shell", path: "./goprom/install_goprom_node3.sh"
#  end

end

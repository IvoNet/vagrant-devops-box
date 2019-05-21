# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.10.100"
  config.vm.synced_folder "./", "/project"
  config.vm.hostname = "devops-box"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "4096"
    vb.name = "devops-box"
    vb.cpus = 2
  end
  # Copy your own ssh config to your
  config.vm.provision "file", source: "ssh/config", destination: "/home/vagrant/.ssh/config"
  config.vm.provision "file", source: "ssh/id_rsa", destination: "/home/vagrant/.ssh/id_rsa"
  config.vm.provision "file", source: "ssh/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"
  config.vm.provision :shell do |s|
    ssh_pub_key = File.readlines("ssh/id_rsa.pub").first.strip
    s.inline = <<-SHELL
        mkdir -p /root/.ssh
        echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
        echo #{ssh_pub_key} >> /root/.ssh/authorized_keys
        echo "export PATH=~/bin:$PATH" >>/home/vagrant/.profile
        echo "alias ah='ansible -i /project/hosts'" >>/home/vagrant/.profile
        echo "alias ap='ansible-playbook -i /project/hosts'" >>/home/vagrant/.profile
        chmod 600 /home/vagrant/.ssh/*
    SHELL
  end
  config.vm.provision "shell", path: "scripts/dependencies.sh"
  config.vm.provision "shell", path: "scripts/terraform.sh"
  config.vm.provision "shell", path: "scripts/packer.sh"
end

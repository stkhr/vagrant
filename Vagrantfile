Vagrant.configure(2) do |config|
  config.vm.box = "centos7"
  config.vm.box_url = "centos7.box"

  # NAT Interface PortForwarding
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Host only Interface
  config.vm.network "private_network", ip: "192.168.33.10"

  # CPU,Memory
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "2", "--ioapic", "on"]
  end

  # Initial startup, running script
  config.vm.provision :shell, :path => "install.sh"
  end

end

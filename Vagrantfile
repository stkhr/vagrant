Vagrant.configure(2) do |config|
 config.vm.define :virtual_machine_name do |server| #virtual machine name
  server.vm.box = "centos7"
  server.vm.box_url = "centos7.box"
  server.vm.hostname = "server_hostname" #server hostname


  # NAT Interface PortForwarding
  server.vm.network "forwarded_port", guest: 80, host: 8080

  # Host only Interface
  # not use .1, .2 
  server.vm.network "private_network", ip: "192.168.0.10"

  # CPU,Memory
  server.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "1", "--ioapic", "on"]
  end

  # Initial startup, running script
  server.vm.provision :shell, :path => "install.sh"
  server.vm.provision "shell", inline: "echo finish!!"
 end
end

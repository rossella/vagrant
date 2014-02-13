Vagrant.configure("2") do |config|
  vmname = "devstack-%s" % Time.now.strftime("%Y%b%d-%Hh%Mm")
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :forwarded_port, guest: 8080, host: 8001
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 6080, host: 6080

  config.vm.provider "virtualbox" do |vb|
    vb.name = vmname
    vb.customize ["modifyvm", :id, "--memory", "4096"]
  end

  # SSH agent forwarding seting
  config.ssh.forward_agent = true

  # initial configuration of the vagrant vm
  config.vm.provision :shell do |s|
    s.path = 'vagrant_init.sh'
  end

end
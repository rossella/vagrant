Vagrant.configure("2") do |config|
  vmname = "devstack-%s" % Time.now.strftime("%Y%b%d-%Hh%Mm")
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
  config.vm.network :forwarded_port, guest: 6080, host: 6080, auto_correct: true

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

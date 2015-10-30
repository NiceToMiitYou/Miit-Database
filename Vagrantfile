Vagrant.configure("2") do |config|
	
	# Specify the base box
	config.vm.box = "ubuntu/trusty64"
	
	# Setup port forwarding
    config.vm.network "private_network", ip: "192.168.56.101"
	config.vm.network :forwarded_port, guest: 2331, host: 2331, auto_correct: true


    # VM specific configs
    config.vm.provider "virtualbox" do |v|
    	v.name = "Miit Database"
    	v.customize ["modifyvm", :id, "--memory", "1024"]
    end

    # Shell provisioning
    config.vm.provision "shell" do |s|
    	s.path = "provision/setup.sh"
    end
end
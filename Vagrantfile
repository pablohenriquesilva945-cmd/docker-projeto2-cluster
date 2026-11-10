Vagrant.configure("2") do |config|
  
  config.vm.box = "bento/ubuntu-22.04"


  config.vm.define "master" do |master|
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.56.10"
    
    master.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end
   
    master.vm.provision "shell", path: "master.sh"
  end

 
  (1..3).each do |i|
    config.vm.define "node0#{i}" do |node|
      node.vm.hostname = "node0#{i}"
      node.vm.network "private_network", ip: "192.168.56.1#{i}"
      
      node.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 1
      end
      # Chama o script do professor para os nós workers
      node.vm.provision "shell", path: "worker.sh"
    end
  end
end

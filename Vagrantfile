Vagrant.configure("2") do |config|
  # 1
  config.vm.define "lss" do |lss|
    lss.vm.box = "geerlingguy/centos7"
  lss.vm.synced_folder "D:\\a_02_Vagrant\\85_Valaxy_Training\\v01_Linux_Shell_Scripting", "/opt/v01_Linux_Shell_Scripting"
  lss.vm.network "private_network", ip: "192.168.10.2"
	lss.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
  end
end
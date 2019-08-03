# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<-SCRIPT
sudo yum install epel-release mc -y &&
sudo yum install mdadm iotop htop sysstat -y
SCRIPT

$script2 = <<-SCRIPT
sudo -s &&
mkdir /raid5
mdadm --create /dev/md5 --level=5 --raid-devices=5 /dev/sdb /dev/sdc /dev/sdd /dev/sde /dev/sdf
mkfs.ext4 /dev/md5
mount /dev/md5 /raid5
SCRIPT

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "centos/7"
    config.vm.provision "shell", inline: $script
    config.vm.provision "shell", inline: $script2
  
  config.vm.provider "virtualbox" do |v|
  
  file_to_disk = 'disk2.vdi'
    unless File.exist?(file_to_disk)
          v.customize ['createhd', '--filename', file_to_disk, '--size', '2560']
          v.customize ["storagectl", :id, "--name", "SATA Controller", "--add", "sata"]
    end
    v.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]

    file_to_disk = 'disk3.vdi'
    unless File.exist?(file_to_disk)
          v.customize ['createhd', '--filename', file_to_disk, '--size', '2560']
    end
    v.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
    
    file_to_disk = 'disk4.vdi'
    unless File.exist?(file_to_disk)
          v.customize ['createhd', '--filename', file_to_disk, '--size', '2560']
    end
    v.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
    
    file_to_disk = 'disk5.vdi'
    unless File.exist?(file_to_disk)
          v.customize ['createhd', '--filename', file_to_disk, '--size', '2560']
    end
    v.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 4, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
 
    file_to_disk = 'disk6.vdi'
    unless File.exist?(file_to_disk)
          v.customize ['createhd', '--filename', file_to_disk, '--size', '2560']
    end
    v.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 5, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
 
 end
  
  
end

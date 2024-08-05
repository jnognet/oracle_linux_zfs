# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 2.4.1"

Vagrant.configure("2") do |config|
  config.vm.define "oracle_linux_zfs"
  config.vm.box = "oraclelinux/8"
  config.vm.box_version = "8.9.511"
  config.vm.box_url = "https://oracle.github.io/vagrant-projects/boxes/oraclelinux/8.json"

  config.vm.disk :disk, size: "40GB", name: "primary_storage", primary: true
  config.vm.disk :disk, size: "10GB", name: "extra_storage"
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end

  config.vm.synced_folder "./vagrant", "/vagrant"
  config.vm.provision "file", source: "./scripts", destination: "$HOME/scripts"
  config.vm.provision "shell", path: "./script.sh"  
end

# -*- mode: ruby -*-
# vi: ft=ruby:ts=2:ai:sw=2

Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu2004"
    config.vm.synced_folder ".", "/vagrant_data", disabled: true

    config.vm.define "master" do |master|
        master.vm.box = "generic/ubuntu2204"
        master.vm.hostname = "terra-docker1"
        master.vm.network "private_network", ip: "10.0.0.10"
        master.vm.provider "virtualbox" do |vb|
            vb.memory = 2048
            vb.cpus = 2
        end
    end    

    config.vm.provision "ansible" do |a|
        a.verbose = "v"
        a.playbook = "playbook.yaml"
    end    
end

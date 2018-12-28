# ansible4vagrant

ansible for vagrant

## Installs

* Install Ansible from https://ansible.com - version 2.7 current latest version
* Install Vagrant from https://www.vagrantup.com/ or from repo - version 2. or better
  - Check version with `vagrant --version`
* Install Virtualbox from https://www.virtualbox.org/wiki/Downloads or from repo - version 5.2 to 6.0
  - Check version with `virtualbox --version`

## Setup

* Create directory for the project **ansible4vagrant** 
* Init Vagrantfile and add Centos v7 box for vagrant with command: 
  - `vagrant init centos/7`
* Start/boot Centos vm : `vagrant up`
* Check status of vm : `vagrant status`
* SSH to vm: `vagrant ssh`
* Shutdown vm: `vagrant halt`

## Configure for Ansible Provision

* Update Vagrantfile adding: 

```
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
  end
```

* Add playbook to provisioning/playbook.yml

* Add ansible.cfg with ansible configuration items





# ansible4vagrant

ansible for vagrant

## Installs

* Install Ansible from https://ansible.com    (require 'yaml-mode)
   (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  - current version 2.7
  - installed from ansible.com
  - check version : `ansible --version`
* Install Vagrant from https://www.vagrantup.com/ or from repo 
  - current version 2.2.2
  - repo version 2.0.2 (ubuntu)
  - Check version : `vagrant --version`
* Install Virtualbox from https://www.virtualbox.org/wiki/Downloads 
  - current version 6.0
  - repo version 5.2 (ubuntu)
  - Check version with `virtualbox --version` | help | about

## Setup

* Create directory for the project **ansible4vagrant**
* List the vagrant boxes
  - `vagrant box list`
* Add Vagrant box for centos/7 - downloads vm image
  - `vagrant box add centos/7`
* Init Vagrantfile for Centos v7 box for vagrant with command: 
  - `vagrant init centos/7`
* Start/add/boot Centos vm : `vagrant up`
* Check status of vm : `vagrant status`
* SSH to vm: `vagrant ssh`
* Shutdown vm: `vagrant halt`

## Configure for Ansible Provision

* Update Vagrantfile 
  - ansible playbook path
  - ansible verbose mode on

```
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
	ansible.verbose = true
  end
```

* Add playbook to provisioning/playbook.yml

* Add ansible.cfg with ansible configuration items
  - add timer and profile tasks
```
[defaults]
callback_whitelist = timer, profile_tasks
```




# ansible4vagrant

ansible for vagrant

## Installs

* Install Ansible from https://ansible.com    (require 'yaml-mode)
   (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  - current version 2.7
  - tested vesion 2.6.4
  - installed from ansible.com
  - check version : `ansible --version`
* Install Vagrant from https://www.vagrantup.com/ or from repo 
  - current version 2.2.2
  - repo version 2.0.2 (ubuntu)
  - Check version : `vagrant --version`
* Install Virtualbox from https://www.virtualbox.org/wiki/Downloads 
  - current version 6.0
  - repo version 5.2 (ubuntu)
  - tested version 5.2.22 (macos)
  - Check version with `virtualbox --version` | help | about

## Setup

* Create directory for the project **ansible4vagrant**
* List the vagrant boxes
  - `vagrant box list`
* Add Vagrant box for centos/7 - downloads vm image
  - `vagrant box add centos/7`
* Add VirtualBox Guest Additions (needed for shared folder)
  - `vagrant plugin install vagrant-vbguest`
* Init Vagrantfile for Centos v7 box for vagrant with command: 
  - `vagrant init centos/7`
* Start/add/boot Centos vm 
  - `vagrant up`
* Check status of vm : `vagrant status`
* SSH to vm: `vagrant ssh`
* Shutdown vm: `vagrant halt`

## Configure for Ansible Provision

* Update Vagrantfile 
  - ansible playbook path
  - ansible verbose mode on

```
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
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

## Add Ansible Role 
* playbook.yml moved from provisioning dir to root
* playbook.yml roles: replace_tokens specify the role to run

```
---
- hosts: all
  roles:
    - replace_tokens
```

* the tasks for replace_tokens is in replace_tokens/main.yml

## Vagrant/Virtualbox messsage
The following message appeared during vagrant provision.
It does not appear to be serious.

```
==> default: Vagrant has detected a configuration issue which exposes a
==> default: vulnerability with the installed version of VirtualBox. The
...
```

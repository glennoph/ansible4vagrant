# ansible4vagrant

Testinfra - test your infrastructure

## Installs

* Install [Ansible](https://ansible.com)    (require 'yaml-mode)
* Install [Testinfra](https://testinfra.readthedocs.io/)
  - Install :: `pip install testinfra`
  - current version 2.0.0
  - Check version :: `testinfra --version`

## tests

* file :: test_infra.py

```python
# test_infra.py
def test_passwd_file(host):
    passwd = host.file("/etc/passwd")
    assert passwd.contains("root")
    assert passwd.user == "root"
```

## setup

```
echo 'save ssh config'
vagrant ssh-config > .vagrant/ssh-config

echo 'run tests with hosts default'
py.test --hosts=default --ssh-config=.vagrant/ssh-config tests/test_vagrant.py
```



## test vagrant

* file :: test_vagrant.py

```python
# test_vagrant.py

def test_datafile1(host):
    datafile1_file = host.file('/data/file1.properties')
    assert datafile1_file.exists
    assert datafile1_file.is_file
    assert datafile1_file.contains('token') == False
```



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

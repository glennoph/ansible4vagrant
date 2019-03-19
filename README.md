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

* file :: tests-setup.sh

```
echo 'save ssh config'
vagrant ssh-config > .vagrant/ssh-config

echo 'run tests with hosts default'
py.test --hosts=default --ssh-config=.vagrant/ssh-config tests/test_vagrant.py
```



## test vagrant


* file :: tests-vagrant.sh

```
echo 'save ssh config'
vagrant ssh-config > .vagrant/ssh-config

echo 'run tests with hosts default'
py.test --hosts=default --ssh-config=.vagrant/ssh-config tests/tests-vagrant.py
```

* file :: tests/test_vagrant.py

```python
# test_vagrant.py

def test_datafile1(host):
    datafile1_file = host.file('/data/file1.properties')
    assert datafile1_file.exists
    assert datafile1_file.is_file
    assert datafile1_file.contains('token') == False
```



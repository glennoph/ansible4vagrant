
#pip install testinfra paramiko

echo 'save ssh config'
vagrant ssh-config > .vagrant/ssh-config

#echo 'run tests'
#py.test --ssh-config=.vagrant/ssh-config tests/tests.py

echo 'run tests with hosts default'
py.test --hosts=default --ssh-config=.vagrant/ssh-config tests/tests-vagrant.py



#pip install testinfra paramiko

echo 'save ssh config'
vagrant ssh-config > .vagrant/ssh-config

#echo 'run tests'
#pytest --ssh-config=.vagrant/ssh-config tests/tests.py

echo 'run tests with hosts default'
pytest --hosts=default --ssh-config=.vagrant/ssh-config tests/tests-vagrant.py

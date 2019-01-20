# ansible4vagrant

ansible for molecule

## Installs

* Install python-pip
  - current version 18.1?
  - tested version 18.1
  - Cmd :: `sudo apt install python-pip`
* Install virtualenv
  - current version 
  - tested version 16.2.0
  - Cmd :: `python -m install virtalenv`
  
* Install Ansible from https://ansible.com    (require 'yaml-mode)
   (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  - current version 2.7
  - tested vesion 2.6.4
  - installed from ansible.com
  - check version : `ansible --version`

## Setup

* Create directory for the project **ansible4vagrant**
* Install pip, virtualenv
* Create and activate virtualenv
  - `python -m virtualenv my_env`
  - `. my_env/bin/activate`
* Install molecule and docker via pip
  - `python -m pip install molecule docker`
* Create role via molecule
  - `molecule init role -r ROLENAME -d docker`

## Test via Molecule
* cd to the role directory and execute
  - `molecule test`
  
  


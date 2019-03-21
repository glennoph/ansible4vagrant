# ansible4vagrant

Molecule - test ansible roles

## Installs

* Install [Ansible](https://ansible.com)    (require 'yaml-mode)
* Install [Molecule](https://molecule.readthedocs.io/)
  - Install :: `pip install molecule`
  - current version 2.19.0
  - Check version :: `molecule --version`

## init new role

* `molecule init role -r rep-role -d docker`
  * where rep-role is the new role 

## tests

```
cd rep-role
molecule test
```
## results

```
--> Validating schema /home/glenn/src/ansible4vagrant-molecule/rep-role/molecule/default/molecule.yml.
Validation completed successfully.
--> Test matrix
    
└── default
    ├── lint
    ├── destroy
    ├── dependency
    ├── syntax
    ├── create
    ├── prepare
    ├── converge
    ├── idempotence
    ├── side_effect
    ├── verify
    └── destroy
    
--> Scenario: 'default'
--> Action: 'lint'
--> Executing Yamllint on files found in /home/glenn/src/ansible4vagrant-molecule/rep-role/...
    /home/glenn/src/ansible4vagrant-molecule/rep-role/tasks/main.yml
      10:1      error    trailing spaces  (trailing-spaces)
      15:14     warning  truthy value should be true or false  (truthy)
      20:13     error    too many spaces after colon  (colons)
      21:13     error    too many spaces after colon  (colons)
      23:13     warning  truthy value should be true or false  (truthy)
      31:11     error    too many spaces after colon  (colons)
      37:1      error    trailing spaces  (trailing-spaces)
      40:1      error    trailing spaces  (trailing-spaces)
    
An error occurred during the test sequence action: 'lint'. Cleaning up.
--> Scenario: 'default'
--> Action: 'destroy'
...
```

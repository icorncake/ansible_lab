Alpine Linux based conatiner using Python3 and Pip3 installs.
===============================================================

Packages
~~~~~~~~~

This container was built to facilitate a DevOps, Ansible course containing many packages.
 - python3 pip3
 - ansible
 - netmiko
 - jmespath
 - yamllint, pylint
 - jq
 - python-docx
 - python-pptx
 - git
 - bash 

User
~~~~~

Created a default user  ``ansible``  with a home directory of  ``/home/ansible``
Created .ssh, .bashrc and imported two YAML test files

* error.yml
* noerror.yml

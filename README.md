Alpine Linux based conatiner using Python3 and Pip3 installs.
===============================================================


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
 - ncclient to run netconf with [Juniper](https://juniper.net/en_US/junos/topics/topic-map/netconf-ssh-connection.html)



Created a default user ansible with a home directory of /home/ansible
Created .ssh, .bashrc and imported two YAML test files

 * error.yml
 * noerror.yml

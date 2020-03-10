[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)


Alpine Linux based conatiner using Python3 and Pip3 installs.
===============================================================


This container was built to facilitate my [NetOps to DevOps Intro](https://snopsy.readthedocs.io/en/latest) course containing many packages.
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
 - ncclient to run netconf

Please see the link for setting up **netconf** use on [Juniper](https://juniper.net/documentation/en_US/junos/topics/topic-map/netconf-ssh-connection.html) devices

Created a default user ansible with a home directory of /home/ansible
Created .ssh, .bashrc and imported two YAML test files

 * error.yml
 * noerror.yml

Playbook
=========

::

  [switches]
  mdf1 ansible_host=172.1.10.1
  mdf2 ansible_host=172.1.10.2

  [switches:vars]
  ansible_connection=network_cli
  ansible_network=ios
  ansible_ssh_pass="S3cret!"
  ansible_user=maintUser

.. centered:: inventory file


::

  ---
  - hosts: [switches]
    gather_facts: no


    tasks:

    - name: Play to run
      ios_command:
        commands: show vlan
      register: vland

    - debug:
        var: vland

.. centered:: playbook1.yml

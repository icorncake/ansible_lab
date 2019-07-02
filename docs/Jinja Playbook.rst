Jinja Playbook
==============

.. sidebar::
    Using set_fact

.. code-block::
   :linenos:

     ---
     - hosts: [switches]
       gather_facts: false
      
       tasks:

       - name: Gather vlan info
         ios_command:
           commands: show vlan
         register: vland


       - set_fact:
           interface: "{{ vland.stdout_lines[0][2].split(\"\") | select('match', '^(Fa|Gi)') | list }}"


       - debug:
           var: interface


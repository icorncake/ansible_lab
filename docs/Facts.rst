Facts
======

.. code-block:: yaml
   :linenos:


    ---
    - hosts: [adc]
      gather_facts: false
      connection: local

      tasks:

      - name: Gather F5 Info
        bigip_device_facts:
          provider:
          gather_subset:
            - system-info
            - interfaces
            - vlans
            - http-monitors
            - virtual-servers
            - partitions
            - self-ips
            - ltm-pools
            - nodes
        delegate_to: localhost
        register: bigip_fact_out

      - name: Copy facts to file
        copy:
          dest: facts.json
          content: "{{ bigip_fact_out }}"

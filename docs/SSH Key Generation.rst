SSH Key Generation
==============

   .. |br| raw:: html
      <br>

Create Public and Private key pair::


From a terminal screen you can generate a ssh key of type (-t) rsa and length (-b) 2048.

    `#ssh-keygen -t rsa -b 2048`


   .. figure:: ../imgs/ssh_keygen.png
      :width: 50%
..

The above command would produce two files:
 - ansible_lab
 - ansible_lab.pub

Repository
=======


Create directories to server as our local repository

 * mkdir ansible_roles
 * mkdir ansible_lab
 * cd ansible_lab       { change directory to ansible_lab }
 * touch error.yml      { create blank file named error.yml }
 * touch noerror.yml
 * touch inventory
 * touch ios.yml
 * git init             { initialize git }


Time to test our ssh key with Gitlab:

::

    #ssh -T git@gitlab.com

If this was successful then let's add the blank inventory to the repository

This marks all files '.' in the working directory to be added to stagging

::

    #git add .

Now we can move the stagged files to commit

::

    #git commit -m "initial push"

Now let's set the remote repository (Gitlab) and sync our local files to the remote master

::

    #git push --set-upstream git@gitlab.com:<username>/ansible_lab.git master



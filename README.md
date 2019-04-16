cjsteel.model
=============

This is not a standard Ansible role.

The model role is intended to be used to test all roles in an Ansible
project and would be customized for that project.

For this reason if you use the role as a starting point you probably
want to delete the .git directory in order to incorporate the role
into the containing projects repository.

Once this is done The roles and variables in `molecule/some_scenario/playbook2.yml`
can be customized to develop and test the larger ansible project and might 
also be useful as a reference when applying the project to target nodes.

Description
-----------

This is intended to be used for molecule testing and development of an
ansible project and the other roles in the project and that's it. This
is why 'defaults/main.yml' and 'tasks/main.yml' are empty.

Requirements
------------

Roles referred to in `molecule/some_scenario/playbook.yml` should be included
in the projects `requirements.yml` file and can be installed with:

```shell
ansible-galaxy install -r requirements.yml
```

Role Variables
--------------

The variables in [molecule/vagrant/playbook.yml](molecule/vagrant/playbook.yml) are used
to update the molecule providers files via the ansible-role-providers role if this is
desired.

Dependencies
------------

ansible-role-providers is required to allow for the updating of the included provider files.

* [ansible-role-providers](https://galaxy.ansible.com/cjsteel/providers)

```shell
ansible-galaxy install cjsteel.providers
```

Example Playbook
----------------

### LXD scenario example

#### molecule/some_scenario/playbook.yml

* [molecule/lxd/playbook.yml](molecule/lxd/playbook.yml)


#### molecule/lxd/playbook.yml

* [molecule/lxd/playbook.yml](molecule/lxd/playbook.yml)

### Example: using to test one or more another roles in a project

#### cjsteel.pip example:

```shell
  vars:
    pip_debug: true
    pip_install_type: 'packages'

    pip_install_from_packages:
    
      - name: molecule
        state: present
        version: "2.20.0.0a1"
        # parent dir of virtualenv below will be the remote home dir
        virtualenv: .venv/molecule/2.20.0.0a1
        virtualenv_python: python2.7

      - name: docker
        state: present
        virtualenv: .venv/molecule/2.20.0.0a1

  roles:
     - role: geerlingguy.docker
     - role: cjsteel.pip
```

License
-------

BSD

Author Information
------------------

Christopher Steel

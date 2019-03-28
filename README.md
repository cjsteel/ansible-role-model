cjsteel.model
=============

This is not a standard Ansible role.

The model role is intended to be used to test all roles in an Ansible
project.

The roles and variables in the `molecule/some_scenario/playbook.yml`
may also be a helpful as a reference when developing the containing Ansible
project's playbooks for deployment.

Description
-----------

This role is intended to be used for molecule testing of all roles in a 
project. That's it. This is why defaults/main.yml and tasks/main.yml
are empty at this time.

Requirements
------------

Roles referred to in `molecule/some_scenario/playbook.yml` should be included
in the projects `requirements.yml` file and can be installed with:

```shell
ansible-galaxy install -r requirements.yml
```

Role Variables
--------------

Role variables in `molecule/some_scenario/playbook.yml` vary depeding on the 
role referred to in the `molecule/some-scenario/playbook.yml` roles section.

No role variables are used in cjsteel.model/defaults/main.yml at this time

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in
regards to parameters that may need to be set for other roles, or variables that
are used from other roles.

Example Playbook
----------------

### molecule/some_scenario/playbook.yml

Link to current contents of:

* [molecule/lxd/playbook.yml](molecule/lxd/playbook.yml)

### tasks/main.yml

This file is probably not going to be used but:

```shell
- hosts: servers
  roles:
     - { role: cjsteel.model, x: 42 }
```

### molecule/lxd/playbook.yml

* [molecule/lxd/playbook.yml](molecule/lxd/playbook.yml)

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
     - role: cjsteel.pip
```



License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a
website (HTML is not allowed).
# ansible-role-model

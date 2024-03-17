# Ansible playbook

First we need [ansible installed](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html):

The `prepare-ubuntu.sh` script in this folder can do this for you.

Running locally

```sh
ansible-playbook ./run-ubuntu.yml --user $(whoami) --ask-pass --ask-become-pass
```

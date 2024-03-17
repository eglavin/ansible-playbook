# Ansible playbook

First we need [ansible installed](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html):

## Ubuntu steps

The `prepare-ubuntu.sh` script in this folder can do this for you.

Running locally

```sh
ansible-galaxy install -r requirements.yml
ansible-playbook ./run.yml --user $(whoami) --ask-pass --ask-become-pass
```

## Mac OS steps

TBD

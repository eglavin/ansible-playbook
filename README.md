# Ansible playbook

First we need [ansible installed](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

The `run.sh` script will install the roles and run the playbook for you otherwise you can do it manually with the following commands:

```sh
ansible-galaxy install -r ./requirements.debian.yml
ansible-playbook ./roles/main.yml --user $(whoami) --ask-pass --ask-become-pass
```

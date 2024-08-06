# Ansible playbook

## Prerequisites

Requirements: `Python` and [`Ansible`](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

### Install with apt

```sh
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

The `prepare-ubuntu.sh` script will run these steps for you.

### Install with brew

```sh
brew install ansible
```

## Usage

The `run.sh` script will install the required roles and run the playbook for you, stopping to prompt you for your login details.

Alternatively you can run it manually with the following command:

```sh
ansible-playbook ./roles/main.yml --user $(whoami) --ask-pass --ask-become-pass
```

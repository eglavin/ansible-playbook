# Ansible playbook

Running locally

```sh
ansible-galaxy install -r requirements.yml
ansible-playbook ./run.yml --user $(whoami) --ask-pass --ask-become-pass
```

To get to this point we first need to [install ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html):

```sh
# 1. Update apt
sudo apt update && sudo apt upgrade -y

# 2. Add ansible ppa
sudo apt-add-repository --yes --update ppa:ansible/ansible

# 3. Install ansible
sudo apt install ansible

# 4. Confirm install
ansible --version
```

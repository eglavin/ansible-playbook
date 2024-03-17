#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run this script using 'sudo'"
  exit
fi

# Update and upgrade apt
apt update
apt upgrade -y

if [ -x "$(command -v ansible)" ]; then
	echo "Ansible is already installed"
else
	echo "Installing Ansible"

	apt-add-repository -y --update ppa:ansible/ansible
	apt install ansible -y
fi

# Use ansible-galaxy to install required roles
echo "Installing Ansible roles"

ansible-galaxy install -r requirements.yml

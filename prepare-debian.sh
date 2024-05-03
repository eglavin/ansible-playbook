#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run this script using 'sudo'"
  exit
fi

if [ -x "$(command -v ansible)" ]; then
	echo "Ansible is already installed"
else
	echo "Installing Ansible"
	apt update
	apt upgrade -y
	apt-add-repository -y --update ppa:ansible/ansible
	apt install ansible -y
fi

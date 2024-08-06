#!/bin/bash

if [ "$EUID" -ne 0 ]; then
	echo "Please run this script using 'sudo'"
	exit 1
fi

if [ -x "$(command -v ansible)" ]; then
	echo "Ansible is already installed"
else
	echo "Installing Ansible"

	apt update
	apt upgrade --yes
	apt install software-properties-common --yes
	apt-add-repository --yes --update ppa:ansible/ansible
	apt install ansible --yes
fi

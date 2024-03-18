#!/bin/bash

os_family="$(uname -s)"

if [ $os_family = "Debian" ]; then
	ansible-galaxy install -r requirements.debian.yml
fi

ansible-galaxy collection install community.general

ansible-playbook ./roles/main.yml --user $(whoami) --ask-pass --ask-become-pass


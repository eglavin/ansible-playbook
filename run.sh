#!/bin/bash

os_family="$(uname -s)"

if [ $os_family = "Darwin" ]; then
	ansible-galaxy collection install community.general
fi

if [ $os_family = "Debian" ]; then
	ansible-galaxy install -r requirements.debian.yml
fi

ansible-playbook ./roles/main.yml --user $(whoami) --ask-pass --ask-become-pass

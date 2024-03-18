#!/bin/bash

os_family="$(uname -s)"

if [ $os_family = "Darwin" ]; then
	ansible-galaxy collection install community.general
fi

ansible-galaxy install -r requirements.yml

ansible-playbook ./roles/main.yml --user $(whoami) --ask-pass --ask-become-pass

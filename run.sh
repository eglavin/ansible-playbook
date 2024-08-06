#!/bin/bash

verbose="false"

while getopts v flag
do
	case "${flag}" in
		v) verbose="true" ;;
	esac
done

ansible-galaxy collection install community.general

if [ $verbose = "true" ]; then
	ansible-playbook ./main.yml --user $(whoami) --ask-pass --ask-become-pass -vvv
else
	ansible-playbook ./main.yml --user $(whoami) --ask-pass --ask-become-pass
fi

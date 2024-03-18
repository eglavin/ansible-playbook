#!/bin/bash

ansible-galaxy install -r requirements.yml

ansible-playbook ./roles/main.yml --user $(whoami) --ask-pass --ask-become-pass

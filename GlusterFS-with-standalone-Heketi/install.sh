#!/bin/bash

cd ./ansible
ansible-galaxy install godleon.docker
ansible-playbook -i inventory setup.yml

#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"

# Generate Vagrantfile
ansible-playbook -i inventory/localhost playbook.yml --extra-vars "action=init" && \

# Run and provision VM
cd cache && vagrant up

# Copy configs and start daemons
ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory --private-key=~/.vagrant.d/insecure_private_key -u vagrant ../playbook.yml --extra-vars "action=start"
#!/bin/bash


# Clone the repository
cd ~
git clone git@github.com:ioannisGiak89/ansible-provision.git ~/.local-provision
cd ~/.local-provision

if [! -f firstrun_done]; then
  ./firstrun.sh
fi


ansible-playbook -i inventory base.yml $1

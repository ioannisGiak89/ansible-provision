#!/bin/bash

# return 1 if global command line program installed, else 0
# example
# echo "node: $(program_is_installed git)"
is_program_installed () {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  return $return_
}

cd ~
if [ ! is_program_installed git ]
then
  sudo apt-get update
  sudo apt-get install git
fi

if [ ! is_program_installed ansible-playbook ]
then
  sudo apt-get update
  sudo apt-get install software-properties-common
  sudo apt-add-repository ppa:ansible/ansible
  sudo apt-get update
  sudo apt-get install ansible
fi

if [! -d ~/ansible-provision]
then
  git clone git@github.com:ioannisGiak89/ansible-provision.git
fi

cd ~/ansible-provision
ansible-playbook -i inventory base.yml $1

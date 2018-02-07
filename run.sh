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
is_program_installed git
if [ $? -eq 0 ]
then
  sudo apt-get update
  sudo apt-get -y install git
fi

is_program_installed ansible-playbook
if [ $? -eq 0 ]
then
  sudo apt-get update
  sudo apt-get -y install software-properties-common
  sudo apt-add-repository ppa:ansible/ansible
  sudo apt-get update
  sudo apt-get -y install ansible
fi

if [ ! -d ~/ansible-provision ]
then
  git clone https://github.com/ioannisGiak89/ansible-provision.git
  cd ~/ansible-provision
else
  cd ~/ansible-provision
  git pull
fi

# read -sp "Enter your password: " rootPassword </dev/tty
# ansible-playbook -i inventory base.yml $1 --extra-vars "ansible_become_pass=$rootPassword"

ansible-playbook -i inventory base.yml $1

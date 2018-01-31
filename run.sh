#!/bin/bash

# Clone the repository
cd ~

if [! -f ~/ansible-provision/firstrun_done]; then
  sudo su -
  apt-get update
  apt-get install software-properties-common
  apt-add-repository ppa:ansible/ansible
  apt-get update
  apt-get install ansible
  apt-get install git

  git clone git@github.com:ioannisGiak89/ansible-provision.git
  cd ~/ansible-provision
  touch firstrun_done
else
  cd ~/ansible-provision
  git pull
fi

ansible-playbook -i inventory base.yml $1

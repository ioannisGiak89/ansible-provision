#!/bin/bash

if [! -f firstrun_done]; then
  bash firstrun.#!/bin/sh
fi

ansible-playbook -i inventory base.yml $1

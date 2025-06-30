#!/bin/bash

dnf install ansible -y
ansible-pull -U https://github.com/Siva123-siet/ansible-roboshop-roles.git -e component=$1 main.yaml
#!bin/bash

dnf install ansible -y
ansible-pull -U https://github.com/RajGitUser/ansible-roboshop-roles-tf.git -e component=mongodb main.yaml
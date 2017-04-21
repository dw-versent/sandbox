#!/bin/bash
#ping -c 10 client
#ansible-playbook --private-key=/root/.ssh/insecure.key -vvvv /data/controller/hello.yml
ansible-playbook --private-key=/root/.ssh/insecure.key /data/controller/hello.yml

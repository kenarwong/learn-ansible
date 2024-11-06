#!/bin/bash

ansible all -m dnf -a “name=httpd state=present"
ansible all -m service -a "name=httpd state=started enabled=yes"
ansible all -m user -a "name=anna"
ansible all -m copy -a "src=/etc/hosts dest=/tmp/hosts"

# To check
# ansible all -m shell -a "systemctl status httpd" | less
# ansible all -m shell -a "id anna"
# ansible all -m shell -a "cat /tmp/hosts"

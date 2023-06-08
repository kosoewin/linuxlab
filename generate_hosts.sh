#!/bin/bash

# Update /etc/hosts file
sudo bash -c 'cat >> /etc/hosts' << EOF
192.168.101.10	centos-lab.local  centos-lab
192.168.101.20	ubuntu-lab.local  ubuntu-lab

EOF

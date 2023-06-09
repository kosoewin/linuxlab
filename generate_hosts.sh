#!/bin/bash

# Update /etc/hosts file
sudo bash -c 'cat >> /etc/hosts' << EOF
192.168.101.10	centos_lab.local  centos_lab
192.168.101.20	ubuntu_lab.local  ubuntu_lab

EOF

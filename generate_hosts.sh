#!/bin/bash

# Update /etc/hosts file
sudo bash -c 'cat >> /etc/hosts' << EOF
192.168.101.10	centoslab.local  centoslab
192.168.101.20	ubuntulab.local  ubuntulab

EOF

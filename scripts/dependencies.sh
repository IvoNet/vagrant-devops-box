#!/usr/bin/env bash
#set -x
apt-get update
apt-get install -q -y python3-pip cowsay docker.io unzip
usermod -aG docker vagrant
pip3 install ansible
pip3 install -U awscli
pip3 install -U awsebcli
apt-get upgrade -y
apt-get clean

#!/bin/bash
#set -x
PACKER_VERSION="1.4.1"

wget -q https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip
unzip -o packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/local/bin
rm packer_${PACKER_VERSION}_linux_amd64.zip


#!/usr/bin/env bash

export DEVOPS_BOX="$(pwd)"
export PATH=$DEVOPS_BOX/bin:$PATH
chmod 600 ssh/*

ssh_me_gently() {
    ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i ${DEVOPS_BOX}/ssh/id_rsa 192.168.10.$1
}
alias devbox='ssh_me_gently 100'

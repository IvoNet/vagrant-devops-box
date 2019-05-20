#!/usr/bin/env bash

export DEVOPS_BOX="$(pwd)"
export PATH=$DEVOPS_BOX/bin:$PATH
chmod 600 ssh/*

ssh_me_gently() {
    ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i ${DEVOPS_BOX}/ssh/id_rsa 192.168.10.$1
}
alias devops='ssh_me_gently 100'
alias dbox='ssh_me_gently 100'
alias box='ssh_me_gently 100'
alias box11='ssh_me_gently 11'
alias box12='ssh_me_gently 12'
alias box13='ssh_me_gently 13'
alias box14='ssh_me_gently 14'

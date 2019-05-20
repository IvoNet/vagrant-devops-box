# Vagrant DevOps box

This vagrant image is created for getting easy access to devops tools like:

* Ansible
* Terraform
* Packer
* Docker

# Prerequisites

On host machine:
* VirtualBox 
* Vagrant 

## Usage

Always run the following command to make life easier:

```bash
source ./ssh-setup
```

clone this repository and in a terminal from that repo:

To provision the devops-box:

```bash
vagrant up
```

To get easy access to the box:

```bash
source ./ssh-setup
devbox
```

# Shared folder(s)

The project folder you are standing in when provisioning the devops-box
is mounted as a shared folder in the VM here: `/project`


# Test Machines

If you need some test machines to play with just change directory to the 
`./test-machines` folder and run:

```bash
vagrant up
```

it will create 4 ubuntu test-machines named machine[1-4] with
IP range between 192.168.2.11-14.

ssh into a machine by running one of these commands:

```bash
ssh_me_gently 11
ssh_me_gently 12
ssh_me_gently 13
ssh_me_gently 14
```


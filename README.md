# Vagrant DevOps box

This vagrant image is created for getting easy access to devops tools like:

* Ansible
* Terraform
* Packer
* Docker
* aws-cli

# Prerequisites

On host machine:
* VirtualBox 
* Vagrant 

# Usage

Always run the following command in the terminal to make life easier:

```bash
source ./activate
```
It will set paths and aliasses correct for that terminal session. 
The prompt will be adjusted to show if activated.

Clone this repository and in a terminal and from that repo...

To provision the devops-box:

```bash
vagrant up
```

To get easy access to the box:

```bash
box
```

if you ran `source ./activate` :-))

# Shared folder(s)

The project folder you are standing in when provisioning the devops-box
is mounted as a shared folder in the VM here: `/project`


# Test Machines

If you need some test machines to play with just change directory to the 
`./test-machines` folder and run:

```bash
vagrant up
```

It will create 4 ubuntu test-machines named machine[1-4] with
IP range between 192.168.2.[11-14].

ssh into a test-machine by running one of these commands: `box1`, `box2`,...

---
# License

    Copyright 2019 (c) Ivo Woltring

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


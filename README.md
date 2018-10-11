# Ansible : Playbook Jboss Wildfly

The aim of this project is to deploy a Jboss Wildfly instance on Linux Vagrant.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to run this Ansible playbook :

*   [Vagrant](https://www.vagrantup.com/docs/installation/) must be installed on your computer
*   Update the Vagrant file based on your computer (CPU, memory), if needed
*   You must have download the ubuntu Xenial64 vagrant box :

```
vagrant box add https://app.vagrantup.com/ubuntu/boxes/xenial64
```

### Usage

A good point with Vagrant is that you can create, update and destroy all architecture easily with some commands.

Be aware that you need to be in the Vagrant directory to be able to run the commands.

#### Build Environment

Vagrant needs to init the project to run and build it :

```
vagrant up
```

After build, you can check which virtual machine Vagrant has created :

```
vagrant status
```

If all run like it is expected, you should see something like this :

```
$ vagrant status

Current machine states:

wildfly01               running (virtualbox)
```

#### Deployment

This playbook has some dependencies to other roles that must be downloaded before executing the playbook :

```bash
$ ansible-galaxy install -r requirements.yml
```

This command should download the Java role from Wikitops Github account to the local role path.

To deploy the Jboss Wildfly instance, you just have to run the Ansible playbook wildfly.yml with this command :

```
ansible-playbook wildfly.yml
```

If everything run as expected, you should access the Dashboard at : http://10.0.4.241:8080/

#### Destroy

To destroy the Vagrant resources created, just run this command :

```
vagrant destroy
```

## Author

Member of Wikitops : https://www.wikitops.io/

## Licence

This project is licensed under the Apache License, Version 2.0. For the full text of the license, see the LICENSE file.

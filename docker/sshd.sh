#!/bin/bash

yum install -y openssh-server
sed -ib 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -ib 's/#PermitEmptyPasswords no/PermitEmptyPasswords yes/' /etc/ssh/sshd_config
sed -ib 's/root:x:0:0:root:/root::0:0:root:/' /etc/passwd


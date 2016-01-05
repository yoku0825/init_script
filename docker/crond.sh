#!/bin/bash

yum install -y cronie
sed -ib 's/\(session \+required \+pam_loginuid.so\)/#\1/' /etc/pam.d/crond

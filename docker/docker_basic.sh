#!/bin/bash

yum upgrade -y
ln -sf /usr/share/zoneinfo/Japan /etc/localtime
yum install -y tar which patch git sudo wget perl epel-release
yum clean all

test -d /tmp/setup || mkdir /tmp/setup

#!/bin/bash

yum upgrade -y
ln -sf /usr/share/zoneinfo/Japan /etc/localtime
yum install -y tar which patch git sudo wget

test -d /tmp/setup || mkdir /tmp/setup

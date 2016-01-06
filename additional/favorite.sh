#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    yum install -y http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/5/x86_64/epel-release-5-4.noarch.rpm
    ;;
  "6"|"7"|"amazon")
    yum install -y epel-release
    ;;
esac

yum install -y vim yum-utils tmux telnet rlwrap jq gdb strace dstat sysstat iotop rpm-build

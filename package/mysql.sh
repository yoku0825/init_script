#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    yum install -y https://dev.mysql.com/get/mysql57-community-release-el5-8.noarch.rpm
    ;;
  "6"|"amazon")
    yum install -y https://dev.mysql.com/get/mysql57-community-release-el6-11.noarch.rpm
    ;;
  "7")
    yum install -y https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
    ;;
esac

yum install -y mysql-community-server mysql-community-devel

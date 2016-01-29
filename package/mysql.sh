#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    yum install -y http://dev.mysql.com/get/mysql57-community-release-el5-7.noarch.rpm
    ;;
  "6"|"amazon")
    yum install -y http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm
    ;;
  "7")
    yum install -y http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm
    ;;
esac

yum install -y mysql-community-server

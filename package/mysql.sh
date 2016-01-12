#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    echo "TODO"
    ;;
  "6"|"amazon")
    yum install -y http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm
    yum install -y mysql-community-server
    ;;
  "7")
    echo "TODO"
    ;;
esac


#!/bin/bash

case "$version" in
  "5")
    echo "TODO"
    ;;
  "6"|"amazon")
    yum install -y epel-release
    yum install -y http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm
    yum install -y http://www.percona.com/downloads/percona-release/percona-release-0.0-1.x86_64.rpm
    yum install -y innotop mysql-utilities percona-toolkit
    ;;
  "7")
    echo "TODO"
    ;;
esac


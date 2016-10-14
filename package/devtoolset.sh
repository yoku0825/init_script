#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh
 
case "$version" in
  "6")
    yum install -y centos-release-SCL
    ;;
  "7")
    yum install -y centos-release-scl
    ;;
  "5"|"amazon"|*)
    echo "TODO:"
    exit 1;
    ;;
esac


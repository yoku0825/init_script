#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    echo "TODO"
    ;;
  "6"|"amazon")
    yum install -y cmake make gcc gcc-c++ ncurses-devel bison libaio-devel numactl-devel 
    ;;
  "7")
    echo "TODO"
    ;;
esac


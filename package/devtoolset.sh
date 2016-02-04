#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh
 
case "$version" in
  "6")
    wget http://people.centos.org/tru/devtools-2/devtools-2.repo -O /etc/yum.repos.d/devtools-2.repo
    yum install devtoolset-2-gcc devtoolset-2-binutils devtoolset-2-gcc-c++
    ;;
  "5"|"amazon"|"7"|*)
    echo "TODO:"
    exit 1;
    ;;
esac


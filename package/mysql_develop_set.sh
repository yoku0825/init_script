#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    echo "TODO"
    ;;
  "6"|"amazon")
    yum install -y cmake make gcc gcc-c++ ncurses-devel bison libaio-devel numactl-devel 
    debuginfo-install -y libstdc++ libgcc glibc zlib openssl-libs libcom_err pcre
    ;;
  "7")
    yum install -y cmake make gcc gcc-c++ ncurses-devel bison libaio-devel numactl-devel 
    debuginfo-install -y libstdc++ libgcc glibc zlib openssl-libs libcom_err pcre
    ;;
esac


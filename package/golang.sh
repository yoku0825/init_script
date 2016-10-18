#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    echo "TODO"
    ;;
  "6")
    yum install -y epel-release
    yum install -y golang-bin
    ;;
  "7")
    yum install -y golang
    ;;
  *)
    echo "TODO"
    ;;
esac

#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh
 
case "$version" in
  "5")
    yum install -y http://packages.groonga.org/centos/5/x86_64/Packages/groonga-release-1.1.0-0.noarch.rpm
    ;;
  "6"|"amazon")
    yum install -y http://packages.groonga.org/centos/6/x86_64/Packages/groonga-release-1.1.0-1.noarch.rpm
    ;;
  "7"|*)
    echo "Does not support yet"
    exit 1;
    ;;
esac

yum install -y mecab mecab-devel mecab-ipadic

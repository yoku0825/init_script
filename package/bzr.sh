#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh

case "$version" in
  "5")
    echo "TODO"
    ;;
  "6"|"amazon")
    yum install -y tar wget gcc python-devel
    mkdir build
    pushd build
    wget https://launchpad.net/bzr/2.6/2.6.0/+download/bzr-2.6.0.tar.gz
    tar xf bzr-2.6.0.tar.gz
    cd bzr-2.6.0
    python setup.py install
    popd
    rm -r build
    ;;
  "7"|*)
    yum install -y bzr
    ;;
esac

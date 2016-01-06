#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh
 
yum install -y http://packages.groonga.org/centos/6/x86_64/Packages/groonga-release-1.1.0-1.noarch.rpm
yum install -y mecab mecab-devel mecab-ipadic

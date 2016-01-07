#!/bin/bash

workdir=$(cd $(dirname $0) ; pwd)
. $workdir/../common.sh
 
case "$version" in
  "5")
    wget http://packages.groonga.org/centos/5/x86_64/Packages/mecab-0.996-1.1.x86_64.rpm
    wget http://packages.groonga.org/centos/5/x86_64/Packages/mecab-devel-0.996-1.1.x86_64.rpm
    wget http://packages.groonga.org/centos/5/x86_64/Packages/mecab-ipadic-2.7.0.20070801-10.1.x86_64.rpm
    rpm -ihv mecab-*.rpm
    rm *.rpm
    ;;
  "6"|"amazon")
    wget http://packages.groonga.org/centos/6/x86_64/Packages/mecab-0.996-1.el6.x86_64.rpm
    wget http://packages.groonga.org/centos/6/x86_64/Packages/mecab-devel-0.996-1.el6.x86_64.rpm
    wget http://packages.groonga.org/centos/6/x86_64/Packages/mecab-ipadic-2.7.0.20070801-10.el6.1.x86_64.rpm
    rpm -ihv mecab-*.rpm
    rm *.rpm
    ;;
  "7")
    wget http://packages.groonga.org/centos/7/x86_64/Packages/mecab-0.996-1.el7.centos.1.x86_64.rpm
    wget http://packages.groonga.org/centos/7/x86_64/Packages/mecab-devel-0.996-1.el7.centos.1.x86_64.rpm
    wget http://packages.groonga.org/centos/7/x86_64/Packages/mecab-ipadic-2.7.0.20070801-10.el7.centos.1.x86_64.rpm
    rpm -ihv mecab-*.rpm
    rm *.rpm
    ;;
esac

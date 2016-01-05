#!/bin/bash

if [ -e "/etc/centos-release" ] ; then

  ### CentOS 6 or 7.
  version=$(perl -nle 'if (/\s([0-9]+)\.(:?[0-9]+)/) {print $1;}' < /etc/centos-release)

elif [ -e "/etc/redhat-release" ] ; then

  ### CentOS 5.x
  version="5"

else 

  ### Other, maybe Amazon Linux
  version="amazon"

f
